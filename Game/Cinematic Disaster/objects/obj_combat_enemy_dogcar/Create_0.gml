// Constants
starting_x = x
starting_y = y
attack_speed = 60
attack_damage = 3
attack_speed_frame = 5
max_screen_awayness = 150

// Variables
inst_target_id = false
has_already_hit = false
health_num = 6
is_go_speed = false
finished_round_trip = false
player_attacked = false
health_reel = noone
has_poison_status_effect = 0
is_stunned = false
is_wet = 0
inst_status_effects = []
inst_status_stun = noone
inst_status_poison = noone
inst_status_wet = noone

// Animations
anim_idle = spr_enemy_dogcar_idle
anim_hit = spr_enemy_dogcar_hit
anim_attack = spr_enemy_dogcar_attack

// Functions
get_hit = function(damage_taken, status_effect)
{
	if damage_taken > 0 and is_wet
	{
		damage_taken += 2
	}
	
	health_num -= damage_taken
	
	audio_play_sound(dogcar_hurt_2_trim, 4, false)
	
	if instance_exists(health_reel)
	{
		health_reel.health_num = health_num
	}
	
	var inst_damage = instance_create_layer(x, y - 128, "Damage", obj_damage)
	inst_damage.number = damage_taken
	
	switch (status_effect)
	{
		case "reveal":
			if not instance_exists(health_reel)
			{
				health_reel = instance_create_layer(x,y+32,"Instances",obj_enemy_health)
				health_reel.health_num = health_num
			}
		break;
		
		case "poison":
			has_poison_status_effect = 3
			if not instance_exists(inst_status_poison)
			{
				inst_status_poison = instance_create_layer(x + global.status_effect_x, y, "Front_Instances", obj_status_poison)
				inst_status_poison.poison_number = has_poison_status_effect
				add_status_effect(inst_status_poison)
			}
			else
			{
				inst_status_poison.poison_number = has_poison_status_effect
			}
		break;
		
		case "stun":
			is_stunned = true
			if not instance_exists(inst_status_stun)
			{
				inst_status_stun = instance_create_layer(x + global.status_effect_x, y, "Front_Instances", obj_status_stun)
				add_status_effect(inst_status_stun)
			}
		break;
		
		case "wet":
			is_wet = 2
			if not instance_exists(inst_status_wet)
			{
				inst_status_wet = instance_create_layer(x + global.status_effect_x, y, "Front_Instances", obj_status_wet)
				inst_status_wet.wet_number = is_wet
				add_status_effect(inst_status_wet)
			}
			else
			{
				inst_status_wet.wet_number = is_wet
			}
		break;
	}
	
	sprite_index = anim_hit
	image_index = 0
}

start_attack = function(inst_player_id)
{
	if is_stunned
	{
		is_stunned = false
		
		remove_status_effect(inst_status_stun)
		if instance_exists(inst_status_stun)
		{
			instance_destroy(inst_status_stun)
		}
		
		obj_combat_state.enemy_attack()
		return
	}
	
	inst_target_id = inst_player_id
	
	sprite_index = anim_attack
	image_index = 0
	audio_play_sound(dogcar_drive_trim, 4, false);
}

take_poison_damage = function()
{
	if has_poison_status_effect > 0
	{
		has_poison_status_effect -= 1
		get_hit(2,"")
		if instance_exists(inst_status_poison)
		{
			inst_status_poison.poison_number = has_poison_status_effect
		}
		
		if has_poison_status_effect == 0
		{
			remove_status_effect(inst_status_poison)
			if instance_exists(inst_status_poison)
			{
				instance_destroy(inst_status_poison)
			}
		}
	}
	
	if is_wet > 0
	{
		is_wet -= 1
		if instance_exists(inst_status_wet)
		{
			inst_status_wet.wet_number = is_wet
		}
		
		if is_wet == 0
		{
			remove_status_effect(inst_status_wet)
			if instance_exists(inst_status_wet)
			{
				instance_destroy(inst_status_wet)
			}
		}
	}
	
	if instance_exists(health_reel)
	{
		health_reel.health_num = health_num
	}
}

add_status_effect = function(inst_status_effect)
{
	array_push(inst_status_effects, inst_status_effect)
	inst_status_effect.y = y + global.status_effect_y[array_length(inst_status_effects)-1]
}

remove_status_effect = function(inst_status_effect)
{
	for (var i = 0; i < array_length(inst_status_effects); i += 1)
	{
		if inst_status_effects[i] == inst_status_effect
		{
			array_delete(inst_status_effects, i, 1)
			
			for (var j = i; j < array_length(inst_status_effects); j += 1)
			{
				if instance_exists(inst_status_effects[j])
				{
					inst_status_effects[j].y = y + global.status_effect_y[j]
				}
			}
			
			i -= 1
		}
	}
}
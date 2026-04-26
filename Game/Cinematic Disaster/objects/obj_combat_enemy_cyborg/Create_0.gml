
// Constants
starting_x = x
starting_y = y
attack_hit_frame = 8
attack_damage = 12
bullet_spawn_x = -105
bullet_spawn_y = -80
bullet_speed = -12

// Variables
inst_target_id = false
has_already_fired = false
health_num = 6
health_reel = noone
has_poison_status_effect = 0
is_stunned = false
is_wet = 0
is_charged = false
has_blocked = false
inst_bullet = noone

// Animations
anim_idle = spr_enemy_cyborg_idle
anim_run = spr_enemy_cyborg_run
anim_hit = spr_enemy_cyborg_hit
anim_attack = spr_enemy_cyborg_attack
anim_block = spr_enemy_cyborg_block
anim_charge_idle = spr_enemy_cyborg_charge_idle
anim_charge_hit = spr_enemy_cyborg_charge_hit
anim_charge_attack = spr_enemy_cyborg_charge_attack
anim_charge_block = spr_enemy_cyborg_charge_block

get_hit = function(damage_taken, status_effect)
{	
	if has_blocked
	{
		health_num -= damage_taken
		
		if damage_taken > 0 and is_wet
		{
			health_num -= 2
		}
	}
	
	if instance_exists(health_reel)
	{
		health_reel.health_num = health_num
	}
	
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
		break;
		
		case "stun":
			is_stunned = true
		break;
		
		case "wet":
			is_wet = 2
		break;
	}
	
	if has_blocked
	{
		if is_charged
		{
			sprite_index = anim_charge_hit
		}
		else
		{
			sprite_index = anim_hit
		}
		image_index = 0
	}
	else
	{
		if is_charged
		{
			sprite_index = anim_charge_block
		}
		else
		{
			sprite_index = anim_block
		}
		image_index = 0
	}
	
	has_blocked = true
}

start_attack = function(inst_player_id)
{
	if is_stunned
	{
		is_stunned = false
		obj_combat_state.enemy_attack()
		return
	}
	
	if not is_charged
	{
		sprite_index = anim_attack
		image_index = 0
		is_charged = true
	}
	else
	{
		inst_target_id = inst_player_id
		sprite_index = anim_charge_attack
		image_index = 0
	}
}

take_poison_damage = function()
{
	if has_poison_status_effect > 0
	{
		has_poison_status_effect -= 1
		get_hit(2,"")
	}
	
	if is_wet > 0
	{
		is_wet -= 1
	}
	
	if instance_exists(health_reel)
	{
		health_reel.health_num = health_num
	}
}
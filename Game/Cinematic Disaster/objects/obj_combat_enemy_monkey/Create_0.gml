
// Constants
starting_x = x
starting_y = y
attack_hit_frames = [7, 9, 11]
banana_speed = -12
screech_hit_frame = 4
screech_fired_frame = 3
screech_damage = 2
banana_damage = 2

// Variables
inst_target_id = false
has_already_hit = false
has_already_fired = false
health_num = 6
health_reel = noone
has_poison_status_effect = 0
is_stunned = false
is_wet = 0

// Animations
anim_idle = spr_enemy_monkey_idle
anim_screech = spr_enemy_monkey_screech
anim_hit = spr_enemy_monkey_hit
anim_attack = spr_enemy_monkey_attack

get_hit = function(damage_taken, status_effect)
{	
	health_num -= damage_taken
	
	if damage_taken > 0 and is_wet
	{
		health_num -= 2
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
	
	sprite_index = anim_hit
	image_index = 0
}

start_attack = function(inst_player_id)
{
	if is_stunned
	{
		is_stunned = false
		obj_combat_state.enemy_attack()
		return
	}
	
	var which_attack = 0 //irandom(1)
	
	if which_attack == 0
	{
		// banana throw
		inst_target_id = inst_player_id
		sprite_index = anim_attack
		image_index = 0
		alarm[1] = 180
	}
	else if which_attack == 1
	{
		// screech
		inst_target_id = inst_player_id
		sprite_index = anim_screech
		image_index = 0
		alarm[1] = 90
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
}
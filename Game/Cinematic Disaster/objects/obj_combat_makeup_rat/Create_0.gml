
// Constants
starting_x = x
starting_y = y
run_speed = 6
attack_hit_frame = 4
attack_damage = 4

// Variables
inst_target_id = false
move_towards_target = false
move_towards_idle = false
has_already_hit = false
health_num = 6
health_reel = noone
has_poison_status_effect = 0
is_stunned = false
is_wet = 0
makeup_actor = noone

// Animations
anim_idle = spr_enemy_rat_idle
anim_run = spr_enemy_rat_run
anim_hit = spr_enemy_rat_hit
anim_attack = spr_enemy_rat_attack

image_xscale = -1

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
	
	inst_target_id = inst_player_id
	sprite_index = anim_run
	image_index = 0
	move_towards_target = true
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

// Constants
starting_x = x
starting_y = y
run_speed = 6
start_attack_frame = 12
end_attack_frame = 14
attack_hit_frame = 3
default_attack_damage = 4
max_health_num = 20
max_tp_num = 10
input_lockout_time = 60
default_input_buffer = 20
actor_x_plus = 64

// Variables
inst_target_id = false
move_towards_target = false
move_towards_idle = false
pressed_space = 0
lockout_space = 0
has_already_hit = false
health_num = 20
tp_num = 10
current_item = 0
current_item_name = ""
input_buffer = default_input_buffer
inst_actor = noone
actor_attack_name = ""
actor_was_attack = true
inst_smokepuff = noone
has_poison_status_effect = 0
is_stunned = false
is_deafened = 0
has_bucket = false

// Animations
anim_idle = spr_combat_player_idle
anim_run = spr_combat_player_run
anim_hit = spr_combat_player_hit
anim_dodge = spr_combat_player_dodge
anim_ready = spr_combat_player_clapperboard_ready
anim_attack = spr_combat_player_clapperboard_attack
anim_defend = spr_combat_player_megaphone_use
anim_item = spr_combat_player_hold_item

start_attack = function(inst_enemy_id, attack_name, tp_cost)
{
	tp_num -= tp_cost
	
	inst_target_id = inst_enemy_id
	actor_attack_name = attack_name
	
	switch attack_name
	{
		case "default_attack":
			sprite_index = anim_run
			image_index = 0
			move_towards_target = true
		break;
		
		case "identify":
			inst_smokepuff = instance_create_layer(x + actor_x_plus, y, "Instances", obj_combat_smokepuff)
			alarm[1] = 15
		break;
		
		case "broom":
			inst_smokepuff = instance_create_layer(inst_target_id.x - 48, inst_target_id.y, "Instances", obj_combat_smokepuff)
			alarm[1] = 15
		break;
		
		case "flying_elbow":
			inst_smokepuff = instance_create_layer(x - actor_x_plus, y, "Instances", obj_combat_smokepuff)
			alarm[1] = 15
		break;
		
		case "gun":
			
		break;
		
		case "disguise":
			
		break;
		
		case "bomb":
			
		break;
	}
}

start_defend = function(defend_name, tp_gain)
{
	tp_num += tp_gain
	
	if tp_num > max_tp_num
	{
		tp_num = max_tp_num
	}
	
	actor_attack_name = defend_name
	
	switch defend_name
	{
		case "default_defend":
			input_buffer = 10
			sprite_index = anim_defend
			image_index = 0
		break;
		
		case "prediction":
			inst_smokepuff = instance_create_layer(x + actor_x_plus, y, "Instances", obj_combat_smokepuff)
			alarm[1] = 15
		break;
		
		case "cleanse":
			inst_smokepuff = instance_create_layer(x + actor_x_plus + 45, y, "Instances", obj_combat_smokepuff)
			alarm[1] = 15
		break;
		
		case "protect":
			
		break;
		
		case "imitate":
			
		break;
		
		case "landmine":
			
		break;
		
		case "blast_shield":
			
		break;
	}
}

get_hit = function(damage_taken, status_effect)
{
	if pressed_space != 0
	{
		sprite_index = anim_dodge
		image_index = 0
	}
	else
	{
		health_num -= damage_taken
		if health_num < 0
		{
			health_num = 0
		}
		sprite_index = anim_hit
		image_index = 0
	}
	
	if not has_bucket
	{
		
	}
}

take_poison_damage = function()
{
	if has_poison_status_effect > 0
	{
		has_poison_status_effect -= 1
		get_hit(2,"")
	}
}

finish_attack = function()
{
	obj_combat_state.finish_player_attack()
}

finish_defend = function()
{
	obj_combat_state.enemy_attack()
}


kill_actor = function(is_attack)
{
	actor_was_attack = is_attack
	instance_create_layer(inst_actor.x, inst_actor.y, "Smoke", obj_combat_smokepuff)
	alarm[2] = 15
}

use_item = function(inst_enemy_id, item_name)
{
	inst_target_id = inst_enemy_id
	current_item_name = item_name
	
	sprite_index = anim_item
	image_index = 0

}

finish_using_item = function()
{
	obj_combat_state.finish_player_item()
}

clear_bucket = function()
{
	has_bucket = false
}
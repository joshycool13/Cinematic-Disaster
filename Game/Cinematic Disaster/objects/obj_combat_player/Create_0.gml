
// Constants
starting_x = x
starting_y = y
run_speed = 6
start_attack_frame = 12
end_attack_frame = 14
attack_hit_frame = 3
default_attack_damage = 4
max_health_num = 20
input_lockout_time = 60
input_buffer = 20

// Variables
inst_target_id = false
move_towards_target = false
move_towards_idle = false
pressed_space = 0
lockout_space = 0
has_already_hit = false
health_num = 20
current_item = 0
current_item_name = ""

// Animations
anim_idle = spr_combat_player_idle
anim_run = spr_combat_player_run
anim_hit = spr_combat_player_hit
anim_dodge = spr_combat_player_dodge
anim_ready = spr_combat_player_clapperboard_ready
anim_attack = spr_combat_player_clapperboard_attack
anim_defend = spr_combat_player_megaphone_use
anim_item = spr_combat_player_hold_item

start_attack = function(inst_enemy_id, attack_name)
{
	inst_target_id = inst_enemy_id
	
	switch attack_name
	{
		case "default_attack":
			sprite_index = anim_run
			image_index = 0
			move_towards_target = true
	}
}

get_hit = function(damage_taken)
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
}

finish_attack = function()
{
	obj_combat_state.finish_player_attack()
}

use_item = function(item_name)
{
	current_item_name = item_name
	sprite_index = anim_item
	image_index = 0

}

finish_using_item = function()
{
	obj_combat_state.finish_player_item()
}
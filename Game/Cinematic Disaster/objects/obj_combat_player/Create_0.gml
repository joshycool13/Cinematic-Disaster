
// Constants
starting_x = x
starting_y = y
run_speed = 4
start_attack_frame = 12
end_attack_frame = 14
attack_hit_frame = 3

// Variables
inst_target_id = false
move_towards_target = false
move_towards_idle = false
pressed_space = 0
has_already_hit = false

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

play_hit_anim = function()
{
	if pressed_space != 0
	{
		sprite_index = anim_dodge
		image_index = 0
	}
	else
	{
		sprite_index = anim_hit
		image_index = 0
	}
}
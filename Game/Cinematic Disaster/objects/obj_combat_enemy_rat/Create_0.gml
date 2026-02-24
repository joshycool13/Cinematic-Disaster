
// Constants
starting_x = x
starting_y = y
run_speed = 4
attack_hit_frame = 4

// Variables
inst_target_id = false
move_towards_target = false
move_towards_idle = false
has_already_hit = false

// Animations
anim_idle = spr_enemy_rat_idle
anim_run = spr_enemy_rat_run
anim_hit = spr_enemy_rat_hit
anim_attack = spr_enemy_rat_attack

play_hit_anim = function()
{
	sprite_index = anim_hit
	image_index = 0
}

start_attack = function(inst_player_id)
{
	inst_target_id = inst_player_id
	sprite_index = anim_run
	image_index = 0
	move_towards_target = true
}
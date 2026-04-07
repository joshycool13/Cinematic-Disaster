
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

// Animations
anim_idle = spr_enemy_rat_idle
anim_run = spr_enemy_rat_run
anim_hit = spr_enemy_rat_hit
anim_attack = spr_enemy_rat_attack

get_hit = function(damage_taken)
{
	health_num -= damage_taken
	
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
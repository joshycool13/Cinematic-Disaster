// Constants
lockout_time = 60
attack_damage_punch = 10
attack_damage_gun = 1
dive_fall_speed = 24
defend_damage_reduction = 2

// Variables
inst_target_id = noone
current_lockout_time = 0
inst_player_id = noone
defend_input_buffer = 10
hit_timing_window = false
attacking_timer = 60
started_attacking_gun = false
finished_attacking_gun = false
draw_mash_text = false

// Animations
anim_guard_dodge = spr_hire_janewick_guard_dodge
anim_guard_hit = spr_hire_janewick_guard_hit
anim_guard_idle = spr_hire_janewick_guard_idle
anim_gun_idle = spr_hire_janewick_gun_idle
anim_gun_shoot = spr_hire_janewick_gun_shoot
anim_punch_dive = spr_hire_janewick_punch_dive
anim_punch_fail = spr_hire_janewick_punch_fail
anim_punch_jump = spr_hire_janewick_punch_jump
anim_punch_success = spr_hire_janewick_punch_success

// Functions
start_attack_gun = function()
{
	sprite_index = anim_gun_idle
	image_index = 0
	draw_mash_text = true
}

start_attack_punch = function()
{
	sprite_index = anim_punch_jump
	image_index = 0
}

start_defend = function()
{
	sprite_index = anim_guard_idle
	image_index = 0
	inst_player_id.input_buffer = defend_input_buffer
	inst_player_id.kill_actor(false,true)
}
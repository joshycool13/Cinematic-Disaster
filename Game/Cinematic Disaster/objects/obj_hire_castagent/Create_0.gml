// Constants
lockout_time = 60
attack_damage = 2

// Variables
inst_target_id = noone
started_attack = true
inst_target = noone
inst_cursor = noone
current_lockout_time = 0
inst_player_id = noone
defend_input_buffer = 40
inst_idle_sound = noone

// Animations
anim_idle = spr_hire_castagent_laptopidle
anim_fail = spr_hire_castagent_laptopfail
anim_success = spr_hire_castagent_laptopsuccess
anim_file = spr_hire_castagent_file

// Functions
start_attack = function()
{
	obj_tutorialtext.tutorial_text = "Press when the plus is inside the crosshair."
	obj_tutorialtext.is_visible = true
	
	sprite_index = anim_idle
	image_index = 0
	started_attack = false
	inst_idle_sound = audio_play_sound(castagent_laptop_idle, 3, true)
}

start_defend = function()
{
	sprite_index = anim_file
	image_index = 0
	inst_player_id.input_buffer = defend_input_buffer
	audio_play_sound(castagent_file_show, 4, false);
}
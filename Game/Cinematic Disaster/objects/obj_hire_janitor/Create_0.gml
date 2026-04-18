// Constants
lockout_time = 60
attack_damage = 8
start_attack_frame = 8
end_attack_frame = 11
attack_hit_frame = 3

// Variables
inst_target_id = noone
current_lockout_time = 0
inst_player_id = noone
defend_input_buffer = 20
has_already_hit = false

// Animations
anim_ready = spr_hire_janitor_broom_ready
anim_attack = spr_hire_janitor_broom_attack
anim_clean = spr_hire_janitor_cleaning

// Functions
start_attack = function()
{
	sprite_index = anim_ready
	image_index = 0
}

start_defend = function()
{
	sprite_index = anim_ready
	image_index = 0
	inst_player_id.input_buffer = defend_input_buffer
}
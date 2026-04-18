// Constants
defend_options = ["default_defend", "prediction", "cleanse", "protect", "landmine", "blast_shield"]

// Variables
inst_target_id = noone
current_lockout_time = 0
inst_player_id = noone
defend_input_buffer = 20
has_already_hit = false
is_attack = false

// Animations
anim_copy = spr_hire_makeup_copy

// Functions
start_attack = function()
{
	sprite_index = anim_copy
	image_index = 0
	is_attack = true
}

start_defend = function()
{
	sprite_index = anim_copy
	image_index = 0
	is_attack = false
}
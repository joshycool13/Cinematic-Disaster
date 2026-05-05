// Constants
defend_options = ["default_defend", "prediction", "cleanse", "protect", "landmine", "blast_shield"]
// Enemies "rat", "dogcar", "shield", "thief_cat", "cyborg", "monkey"
enemy_options = ["rat", "dogcar", "shield", "thief_cat", "cyborg", "monkey"]

// Variables
inst_target_id = noone
inst_player_id = noone
is_attack = false
inst_enemy_id = noone

// Animations
anim_copy = spr_hire_makeup_copy

// Functions
start_attack = function()
{
	sprite_index = anim_copy
	image_index = 0
	is_attack = true
	audio_play_sound(makeup_copy, 4, false)
}

start_defend = function()
{
	sprite_index = anim_copy
	image_index = 0
	is_attack = false
	audio_play_sound(makeup_copy, 4, false)
}

finish_attack = function()
{
	inst_player_id.kill_actor(true)
}
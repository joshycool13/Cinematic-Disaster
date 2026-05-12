// Constants
attack_damage = 5
attack_hit_frame = 1
bomb_gravity = 0.5
bar_x = 896
bar_y = 128
slider_speed = 12
green_bar_x_end = 78
green_bar_x_begin = 182
bomb_x = 50
bomb_y = -140
mine_x = 17
mine_y = 3
shield_x = 17
shield_y = 16

// Variables
inst_target_id = noone
inst_player_id = noone
defend_input_buffer = 0
shield_input_buffer = 20
inst_slider = noone
inst_bar = noone
h_speed = 8
v_speed = -12
has_already_hit = false
inst_bomb = noone
inst_bomb_explosion = noone
inst_fuse_sound = noone

// Animations
anim_bomb_aiming = spr_hire_boomcrew_bomb_aiming
anim_bomb_miss = spr_hire_boomcrew_bomb_miss
anim_bomb_throw = spr_hire_boomcrew_bomb_throw
anim_mine_place = spr_hire_boomcrew_mine_place
anim_shield_place = spr_hire_boomcrew_shield_place

// Functions
start_attack = function()
{
	obj_tutorialtext.tutorial_text = "Press when the slider hits the green."
	obj_tutorialtext.is_visible = true
	
	sprite_index = anim_bomb_aiming
	image_index = 0
	inst_fuse_sound = audio_play_sound(boomcrew_bomb_fuse, 3, true)
	inst_bar = instance_create_layer(bar_x, bar_y, "Items", obj_bombbar)
	inst_slider = instance_create_layer(bar_x - inst_bar.sprite_width, bar_y, "Selectors", obj_bombslider)
}

start_defend_mine = function()
{
	sprite_index = anim_mine_place
	image_index = 0
	inst_player_id.input_buffer = defend_input_buffer
}

start_defend_blastshield = function()
{
	sprite_index = anim_shield_place
	image_index = 0
	inst_player_id.input_buffer = shield_input_buffer
}

finish_attack = function()
{
	inst_player_id.kill_actor(true)
}
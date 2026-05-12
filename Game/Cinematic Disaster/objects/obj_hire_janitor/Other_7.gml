if sprite_index = anim_ready or sprite_index = anim_attack
{
	obj_tutorialtext.is_visible = false
	
	sprite_index = anim_ready
	image_speed = 0
	image_index = 0
	inst_player_id.kill_actor(true)
}

if sprite_index = anim_clean
{
	sprite_index = anim_clean
	image_speed = 0
	image_index = 0
	inst_player_id.has_bucket = true
	inst_player_id.kill_actor(false)
}
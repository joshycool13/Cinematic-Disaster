if sprite_index == anim_idle
{
	image_index = 2
}

if sprite_index == anim_fail or sprite_index == anim_success
{
	image_speed = 0
	image_index = image_number - 1
	inst_player_id.kill_actor(true)
}

if sprite_index == anim_file
{
	image_speed = 0
	image_index = image_number - 1
	inst_player_id.kill_actor(false)
}
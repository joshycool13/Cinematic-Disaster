if sprite_index = anim_bomb_miss
{
	image_speed = 0
	image_index = image_number - 1
	inst_player_id.kill_actor(true)
}

if sprite_index = anim_bomb_throw
{
	image_speed = 0
	image_index = image_number - 1
}
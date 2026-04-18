if sprite_index = anim_ready or sprite_index = anim_attack
{
	sprite_index = anim_ready
	image_speed = 0
	image_index = 0
	inst_player_id.kill_actor(true)
}
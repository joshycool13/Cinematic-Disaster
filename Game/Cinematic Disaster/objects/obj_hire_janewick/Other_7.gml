if sprite_index = anim_punch_jump
{
	x = inst_target_id.x
	y = -200
	sprite_index = anim_punch_dive
	image_index = 0
}

if sprite_index = anim_punch_success or sprite_index = anim_punch_fail
{
	image_speed = 0
	image_index = image_number - 1
	inst_player_id.kill_actor(true)
}

if sprite_index = anim_guard_idle
{
	sprite_index = anim_guard_idle
	image_speed = 0
	image_index = 0
	inst_player_id.has_bucket = true
	inst_player_id.kill_actor(false)
}
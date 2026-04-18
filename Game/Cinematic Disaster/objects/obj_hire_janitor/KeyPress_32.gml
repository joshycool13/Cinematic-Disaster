if sprite_index == anim_ready and image_index >= start_attack_frame and image_index <= end_attack_frame and not current_lockout_time > 0
{
	sprite_index = anim_attack
	image_index = 0
}

current_lockout_time = lockout_time
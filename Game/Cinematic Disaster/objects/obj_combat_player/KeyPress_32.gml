

if sprite_index == anim_ready and image_index >= start_attack_frame and image_index <= end_attack_frame and not lockout_space > 0
{
	sprite_index = anim_attack
	image_index = 0
}

if lockout_space <= 0 {
	pressed_space = input_buffer
}

lockout_space = input_lockout_time
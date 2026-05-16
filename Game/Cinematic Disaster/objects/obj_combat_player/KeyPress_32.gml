

if sprite_index == anim_ready and image_index >= start_attack_frame and image_index <= end_attack_frame and not lockout_space > 0
{
	if global.combat_tutorial and obj_combat_state.tutorial_part == 6
	{
		obj_combat_state.destroy_tutorial_text()
	}
	
	sprite_index = anim_attack
	image_index = 0
	image_speed = 1
}

if lockout_space <= 0 {
	pressed_space = input_buffer
}

if global.combat_tutorial and obj_combat_state.tutorial_part == 13 and lockout_space <= 0 and obj_combat_enemy_tutorialrat.image_speed == 0
{
	obj_combat_state.destroy_tutorial_text()
}

lockout_space = input_lockout_time
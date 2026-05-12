if instance_exists(inst_cursor)
{
	obj_tutorialtext.is_visible = false
	
	var target_half_width = inst_target.sprite_width/2
	audio_stop_sound(inst_idle_sound)
	
	if inst_cursor.x > inst_target.x - target_half_width and inst_cursor.x < inst_target.x + target_half_width
	{
		obj_combat_state.attacked_is_hit(inst_target_id, attack_damage, false, "reveal")
		instance_destroy(inst_cursor)
		instance_destroy(inst_target)
		sprite_index = anim_success
		image_index = 0
		audio_play_sound(castagent_laptop_attack, 3, false)
	}
	else
	{
		instance_destroy(inst_cursor)
		instance_destroy(inst_target)
		sprite_index = anim_fail
		image_index = 0
		audio_play_sound(castagent_laptop_fail, 3, false)
	}
}

current_lockout_time = lockout_time
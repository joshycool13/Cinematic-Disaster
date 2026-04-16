if instance_exists(inst_cursor) and current_lockout_time <= 0
{
	var target_half_width = inst_target.sprite_width/2
	if inst_cursor.x > inst_target.x - target_half_width and inst_cursor.x < inst_target.x + target_half_width
	{
		obj_combat_state.attacked_is_hit(inst_target_id, attack_damage, false, "reveal")
		instance_destroy(inst_cursor)
		instance_destroy(inst_target)
		sprite_index = anim_success
		image_index = 0
	}
}

current_lockout_time = lockout_time
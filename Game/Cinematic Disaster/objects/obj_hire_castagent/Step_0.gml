if instance_exists(inst_cursor)
{
	inst_cursor.x += 8
	if inst_cursor.x > window_get_width()
	{
		obj_tutorialtext.is_visible = false
		
		instance_destroy(inst_cursor)
		instance_destroy(inst_target)
		sprite_index = anim_fail
		image_index = 0
	}
}

if not started_attack
{
	started_attack = true
	inst_target = instance_create_layer(inst_target_id.x, inst_target_id.y, "Selectors", obj_target)
	inst_cursor = instance_create_layer(0, inst_target_id.y, "Selectors", obj_cursor)
}
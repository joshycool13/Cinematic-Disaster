if sprite_index == anim_idle
{
	image_index = 2
}

if not started_attack
{
	started_attack = true
	inst_target = instance_create_layer(inst_target_id.x, inst_target_id.y, "Instances", obj_target)
	inst_cursor = instance_create_layer(0, inst_target_id.y, "Instances", obj_cursor)
}
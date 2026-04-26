x = x + banana_speed

if x <= inst_target_id.x
{
	if inst_target_id.input_buffer == 0 and is_wet
	{
		inst_monkey_id.health_num -= banana_damage - 2
	}
	else if inst_target_id.input_buffer == 0
	{
		inst_monkey_id.health_num -= banana_damage
	}
	
	if is_wet
	{
		obj_combat_state.attacked_is_hit(inst_target_id, banana_damage-2, false, "poison")
	}
	else
	{
		obj_combat_state.attacked_is_hit(inst_target_id, banana_damage, false, "poison")
	}
	
	instance_destroy()
}
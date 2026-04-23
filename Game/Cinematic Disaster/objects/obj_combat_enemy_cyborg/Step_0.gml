if sprite_index = anim_charge_attack and image_index >= attack_hit_frame and image_index < attack_hit_frame + 1 and not has_already_hit
{
	has_already_hit = true
	
	/*if inst_target_id.input_buffer == 0 and is_wet
	{
		health_num -= attack_damage - 2
	}
	else if inst_target_id.input_buffer == 0
	{
		health_num -= attack_damage
	}
	
	if is_wet
	{
		obj_combat_state.attacked_is_hit(inst_target_id, attack_damage-2, false)
	}
	else
	{
		obj_combat_state.attacked_is_hit(inst_target_id, attack_damage, false)
	}*/
}

if sprite_index = anim_charge_attack and image_index >= attack_hit_frame + 1 and image_index < attack_hit_frame + 2 and has_already_hit
{
	has_already_hit = false
}
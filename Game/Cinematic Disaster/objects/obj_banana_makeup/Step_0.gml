x = x - banana_speed

if x >= inst_target_id.x
{
	if is_wet
	{
		obj_combat_state.attacked_is_hit(inst_target_id, banana_damage-2, false, "poison")
	}
	else
	{
		obj_combat_state.attacked_is_hit(inst_target_id, banana_damage, false, "poison")
	}
	
	audio_play_sound(tomato_use_and_banana, 4, false)
	
	instance_destroy()
}
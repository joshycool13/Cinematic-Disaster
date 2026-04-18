if sprite_index = anim_punch_dive
{
	y = y + dive_fall_speed
	
	if y >= inst_target_id.y + sprite_height / 2
	{
		y = inst_target_id.y + sprite_height / 2
		
		if hit_timing_window
		{
			sprite_index = anim_punch_success
			obj_combat_state.attacked_is_hit(inst_target_id,attack_damage_punch,false)
		}
		else
		{
			sprite_index = anim_punch_fail
		}
	}
}



if current_lockout_time != 0
{
	lockout_time -= 1
}
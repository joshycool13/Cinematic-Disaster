if sprite_index = anim_punch_dive
{
	y = y + dive_fall_speed
	
	if y >= inst_target_id.y + sprite_height / 2
	{
		y = inst_target_id.y + sprite_height / 2
		
		if hit_timing_window
		{
			sprite_index = anim_punch_success
			image_index = 0
			audio_play_sound(janewick_dive_hit, 4, false)
			obj_combat_state.attacked_is_hit(inst_target_id,attack_damage_punch,false)
		}
		else
		{
			sprite_index = anim_punch_fail
			image_index = 0
			audio_play_sound(janewick_dive_fail, 4, false)
		}
	}
}

if attacking_timer <= 0 and not finished_attacking_gun
{
	finished_attacking_gun = true
	sprite_index = anim_gun_idle
	image_speed = 0
	image_index = image_number - 1
	inst_player_id.kill_actor(true)
}

if current_lockout_time != 0
{
	lockout_time -= 1
}

if started_attacking_gun and attacking_timer > 0
{
	attacking_timer -= 1
}
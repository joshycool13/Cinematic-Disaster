if sprite_index == anim_punch_dive and y > 0 and not current_lockout_time > 0
{
	hit_timing_window = true
}

if sprite_index = anim_gun_idle and not finished_attacking_gun or sprite_index = anim_gun_shoot and not finished_attacking_gun
{
	started_attacking_gun = true
	obj_combat_state.attacked_is_hit_random(attack_damage_gun)
	sprite_index = anim_gun_shoot
	image_index = 0
}

current_lockout_time = lockout_time
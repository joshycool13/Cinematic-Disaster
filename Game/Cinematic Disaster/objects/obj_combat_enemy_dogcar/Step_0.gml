if sprite_index == anim_attack and image_index >= attack_speed_frame and image_index < attack_speed_frame + 1 and not is_go_speed
{
	is_go_speed = true
}

if is_go_speed
{
	x = x - attack_speed
}

if x < -max_screen_awayness and not finished_round_trip
{
	finished_round_trip = true
	var remaining_x = x + max_screen_awayness
	x = window_get_width() + max_screen_awayness + remaining_x
}

if instance_exists(inst_target_id) and x < inst_target_id.x and not player_attacked
{
	player_attacked = true
	obj_combat_state.attacked_is_hit(inst_target_id, attack_damage, false)
}

if x < starting_x and finished_round_trip
{
	finished_round_trip = false
	is_go_speed = false
	player_attacked = false
	image_index = attack_speed_frame
	image_speed = -1
}
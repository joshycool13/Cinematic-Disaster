if move_towards_target
{
	x = x - run_speed
	if x <= inst_target_id.x + 64
	{
		move_towards_target = false
		sprite_index = anim_attack
		image_index = 0
	}
}

if move_towards_idle
{
	x = x + run_speed
	if x >= starting_x
	{
		move_towards_idle = false
		image_xscale = 1
		sprite_index = anim_idle
		image_index = 0
		obj_combat_state.finish_player_defend()
	}
}

if sprite_index = anim_attack and image_index >= attack_hit_frame and image_index < attack_hit_frame + 1
{
	obj_combat_state.attacked_is_hit()
}
if move_towards_target
{
	x = x + run_speed
	if x >= inst_target_id.x - 64
	{
		x = inst_target_id.x - 64
		move_towards_target = false
		sprite_index = anim_attack
		image_index = 0
	}
}

if move_towards_idle
{
	x = x - run_speed
	if x <= starting_x
	{
		x = starting_x
		move_towards_idle = false
		image_xscale = -1
		sprite_index = anim_idle
		image_index = 0
		alarm[1] = 15
		makeup_actor.finish_attack()
	}
}

if sprite_index = anim_attack and image_index >= attack_hit_frame and image_index < attack_hit_frame + 1 and not has_already_hit
{
	has_already_hit = true
	
	if is_wet
	{
		obj_combat_state.attacked_is_hit(inst_target_id, attack_damage-2, false)
	}
	else
	{
		obj_combat_state.attacked_is_hit(inst_target_id, attack_damage, false)
	}
}

if sprite_index = anim_attack and image_index >= attack_hit_frame + 1 and image_index < attack_hit_frame + 2 and has_already_hit
{
	has_already_hit = false
}

if sprite_index = anim_attack and image_index >= attack_hit_frame_2 and image_index < attack_hit_frame_2 + 1 and not has_already_hit
{
	has_already_hit = true
	x = x + 128
	
	if is_wet
	{
		obj_combat_state.attacked_is_hit(inst_target_id, attack_damage-2, false)
	}
	else
	{
		obj_combat_state.attacked_is_hit(inst_target_id, attack_damage, false)
	}
}

if sprite_index = anim_attack and image_index >= attack_hit_frame_2 + 1 and image_index < attack_hit_frame_2 + 2 and has_already_hit
{
	has_already_hit = false
}
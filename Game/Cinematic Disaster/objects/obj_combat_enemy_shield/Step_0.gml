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
		obj_combat_state.enemy_attack()
	}
}

if sprite_index = anim_attack and image_index >= attack_hit_frame and image_index < attack_hit_frame + 1 and not has_already_hit
{
	has_already_hit = true
	
	if inst_target_id.input_buffer == 0 and is_wet
	{
		health_num -= attack_damage - 2
		
		var inst_damage = instance_create_layer(x, y - 128, "Damage", obj_damage)
		inst_damage.number = attack_damage - 2
	}
	else if inst_target_id.input_buffer == 0
	{
		health_num -= attack_damage
		
		var inst_damage = instance_create_layer(x, y - 128, "Damage", obj_damage)
		inst_damage.number = attack_damage
	}
	
	if is_wet
	{
		obj_combat_state.attacked_is_hit(inst_target_id, attack_damage-2, false, "stun")
	}
	else
	{
		obj_combat_state.attacked_is_hit(inst_target_id, attack_damage, false, "stun")
	}
}

if sprite_index = anim_attack and image_index >= attack_hit_frame + 1 and image_index < attack_hit_frame + 2 and has_already_hit
{
	has_already_hit = false
}
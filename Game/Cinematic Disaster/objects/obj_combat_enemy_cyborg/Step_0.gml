if sprite_index = anim_charge_attack and image_index >= attack_hit_frame and image_index < attack_hit_frame + 1 and not has_already_fired
{
	has_already_fired = true
	is_charged = false
	
	inst_bullet = instance_create_layer(x+bullet_spawn_x, y+bullet_spawn_y, "Front_Instances", obj_bullet)
	alarm[1] = 75
}

if sprite_index = anim_charge_attack and image_index >= attack_hit_frame + 1 and image_index < attack_hit_frame + 2 and has_already_fired
{
	has_already_fired = false
}

if instance_exists(inst_bullet)
{
	inst_bullet.x += bullet_speed
	if inst_bullet.x < inst_target_id.x and not inst_bullet.bullet_hit
	{
		inst_bullet.bullet_hit = true
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
			obj_combat_state.attacked_is_hit(inst_target_id, attack_damage-2, false)
		}
		else
		{
			obj_combat_state.attacked_is_hit(inst_target_id, attack_damage, false)
		}
	}
}
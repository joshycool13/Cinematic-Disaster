
if sprite_index = anim_attack and image_index >= attack_hit_frame and image_index < attack_hit_frame + 1 and not has_already_hit
{
	has_already_hit = true
	obj_combat_state.attacked_is_hit(inst_target_id, attack_damage, false, "wet")
}

if sprite_index = anim_attack and image_index >= attack_hit_frame + 1 and image_index < attack_hit_frame + 2 and has_already_hit
{
	has_already_hit = false
}

if current_lockout_time != 0
{
	lockout_time -= 1
}
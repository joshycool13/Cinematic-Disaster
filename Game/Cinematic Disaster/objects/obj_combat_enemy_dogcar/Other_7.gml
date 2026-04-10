if sprite_index == anim_hit
{
	sprite_index = anim_idle
	image_index = 0
}

if sprite_index == anim_attack and is_go_speed
{
	image_index = attack_speed_frame
}

if sprite_index == anim_attack and not is_go_speed
{
	sprite_index = anim_idle
	image_index = 0
	image_speed = 1
	obj_combat_state.enemy_attack()
}
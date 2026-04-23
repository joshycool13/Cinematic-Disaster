
if sprite_index == anim_hit or sprite_index == anim_block
{
	sprite_index = anim_idle
	image_index = 0
}

if sprite_index == anim_charge_hit or sprite_index == anim_charge_block
{
	sprite_index = anim_charge_idle
	image_index = 0
}

if sprite_index == anim_attack
{
	sprite_index = anim_charge_idle
	image_index = 0
	obj_combat_state.enemy_attack()
}
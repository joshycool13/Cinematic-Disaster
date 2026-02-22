
if sprite_index == anim_hit
{
	sprite_index = anim_idle
	image_index = 0
}

if sprite_index == anim_attack
{
	image_xscale = -1
	sprite_index = anim_run
	image_index = 0
	move_towards_idle = true
}
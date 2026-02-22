
if sprite_index == anim_ready
{
	image_xscale = -1
	sprite_index = anim_run
	move_towards_idle = true
}

if sprite_index == anim_attack
{
	image_xscale = -1
	sprite_index = anim_run
	move_towards_idle = true
}

if sprite_index == anim_hit
{
	sprite_index = anim_idle
}
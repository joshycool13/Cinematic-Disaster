
if sprite_index == anim_ready
{
	image_xscale = -1
	sprite_index = anim_run
	image_index = 0
	move_towards_idle = true
}

if sprite_index == anim_attack
{
	image_xscale = -1
	sprite_index = anim_run
	image_index = 0
	move_towards_idle = true
}

if sprite_index == anim_hit
{
	sprite_index = anim_idle
	image_index = 0
}

if sprite_index = anim_dodge
{
	sprite_index = anim_idle
	image_index = 0
}

if sprite_index = anim_item
{
	switch current_item_name
	{
		case "corp_drink":
			current_item = instance_create_layer(x+50, y-145, "Items", obj_item_corporate_drink)
		break;
		
		case "rotten_tomato":
			current_item = instance_create_layer(x+50, y-145, "Items", obj_item_rotten_tomato)
		break;
	}
	image_speed = 0
	image_index = image_number-1
	alarm[0] = 60
}
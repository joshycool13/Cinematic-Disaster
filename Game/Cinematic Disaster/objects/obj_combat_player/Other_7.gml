
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

if sprite_index == anim_defend
{
	sprite_index = anim_idle
	image_index = 0
	finish_defend()
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
	audio_play_sound(attack_shine, 4, false)
	
	switch current_item_name
	{
		case "drink":
			current_item = instance_create_layer(x+50, y-145, "Items", obj_item_corporate_drink)
		break;
		
		case "coffee":
			current_item = instance_create_layer(x+50, y-145, "Items", obj_item_coffee)
		break;
		
		case "rag":
			current_item = instance_create_layer(x+50, y-145, "Items", obj_item_rag)
		break;
		
		case "linechange":
			current_item = instance_create_layer(x+50, y-145, "Items", obj_item_line_change)
		break;
		
		case "tomato":
			current_item = instance_create_layer(x+50, y-145, "Items", obj_item_rotten_tomato)
		break;
		
		case "flashbang":
			current_item = instance_create_layer(x+50, y-145, "Items", obj_item_flashbang)
		break;
	}
	image_speed = 0
	image_index = image_number-1
	alarm[0] = 60
}
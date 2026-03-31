instance_destroy(current_item)

switch current_item_name
{
	case "corp_drink":
		health_num += 10
		if health_num > max_health_num
		{
			health_num = max_health_num
		}
	break;
}

sprite_index = anim_idle
image_index = 0
image_speed = 1
finish_using_item()
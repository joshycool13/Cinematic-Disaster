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
	
	case "coffee":
		tp_num += 5
		if tp_num > max_tp_num
		{
			tp_num = max_tp_num
		}
	break;
	
	case "rag":
		
	break;
	
	case "line_change":
		
	break;
	
	case "rotten_tomato":
		obj_combat_state.attacked_is_hit(inst_target_id,0,false,"poison")
	break;
	
	case "flashbang":
		
	break;
}

sprite_index = anim_idle
image_index = 0
image_speed = 1
finish_using_item()
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
		has_poison_status_effect = 0
		is_deafened = 0
	break;
	
	case "line_change":
		
	break;
	
	case "rotten_tomato":
		obj_combat_state.attacked_is_hit(inst_target_id,0,false,"poison")
	break;
	
	case "flashbang":
		obj_combat_state.attacked_is_hit(inst_target_id,0,false,"stun")
	break;
}

if current_item_name = "line_change"
{
	sprite_index = anim_idle
	image_index = 0
	image_speed = 1
	
	var attack_number = irandom(6)
	switch attack_number
	{
		case 0:
			start_attack(inst_target_id,"default_attack",0)
		break
		
		case 1:
			start_attack(inst_target_id,"identify",0)
		break
		
		case 2:
			start_attack(inst_target_id,"broom",0)
		break
		
		case 3:
			start_attack(inst_target_id,"flying_elbow",0)
		break
		
		case 4:
			start_attack(inst_target_id,"gun",0)
		break
		
		case 5:
			start_attack(inst_target_id,"disguise",0)
		break
		
		case 6:
			start_attack(inst_target_id,"bomb",0)
		break
		
	}
}
else
{
	sprite_index = anim_idle
	image_index = 0
	image_speed = 1
	finish_using_item()
}
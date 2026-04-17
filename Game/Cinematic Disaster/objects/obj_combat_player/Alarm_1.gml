switch actor_attack_name
{
	// Attacks
	case "identify":
		inst_actor = instance_create_layer(inst_smokepuff.x, inst_smokepuff.y, "Instances", obj_hire_castagent)
		inst_actor.inst_player_id = self
		inst_actor.inst_target_id = inst_target_id
		inst_actor.start_attack()
	break;
	
	case "broom":
		
	break;
	
	case "flying_elbow":
		
	break;
	
	case "gun":
		
	break;
	
	case "disguise":
		
	break;
	
	case "bomb":
		
	break;

	// Defends
	case "prediction":
		inst_actor = instance_create_layer(inst_smokepuff.x, inst_smokepuff.y, "Instances", obj_hire_castagent)
		inst_actor.inst_player_id = self
		inst_actor.inst_target_id = inst_target_id
		inst_actor.start_defend()
	break;
	
	case "cleanse":
		
	break;
	
	case "protect":
		
	break;
	
	case "imitate":
		
	break;
	
	case "landmine":
		
	break;
	
	case "blast_shield":
		
	break;
}
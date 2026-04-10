switch actor_attack_name
{
	case "identify":
		inst_actor = instance_create_layer(x + actor_x_plus, y, "Instances", obj_hire_castagent)
		inst_actor.inst_player_id = self
		inst_actor.inst_target_id = inst_target_id
	break;
	
	case "prediction":
		inst_actor = instance_create_layer(x + actor_x_plus, y, "Instances", obj_hire_castagent)
		inst_actor.inst_player_id = self
		inst_actor.inst_target_id = inst_target_id
	break;
}
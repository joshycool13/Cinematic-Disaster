switch actor_attack_name
{
	case "identify":
		inst_actor = instance_create_layer(inst_smokepuff.x, inst_smokepuff.y, "Instances", obj_hire_castagent)
		inst_actor.inst_player_id = self
		inst_actor.inst_target_id = inst_target_id
		inst_actor.start_attack()
	break;
	
	case "prediction":
		inst_actor = instance_create_layer(inst_smokepuff.x, inst_smokepuff.y, "Instances", obj_hire_castagent)
		inst_actor.inst_player_id = self
		inst_actor.inst_target_id = inst_target_id
		inst_actor.start_defend()
	break;
}
switch actor_attack_name
{
	case "identify":
		tp_num -= 2
		obj_combat_state.update_hud_text()
		inst_actor = instance_create_layer(x + actor_x_plus, y, "Instances", obj_hire_castagent)
		inst_actor.inst_player_id = self
		inst_actor.inst_target_id = inst_target_id
	break;
}
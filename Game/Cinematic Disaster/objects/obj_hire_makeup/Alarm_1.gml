var attack = irandom(array_length(enemy_options)-1)

visible = false

switch enemy_options[attack]
{
	case "rat":
		inst_enemy_id = instance_create_layer(x, y, "Instances", obj_combat_makeup_rat)
	break
	
	case "dogcar":
		inst_enemy_id = instance_create_layer(x, y, "Instances", obj_combat_makeup_dogcar)
	break
	
	case "shield":
		inst_enemy_id = instance_create_layer(x, y, "Instances", obj_combat_makeup_shield)
	break
	
	case "cyborg":
		inst_enemy_id = instance_create_layer(x, y, "Instances", obj_combat_makeup_cyborg)
	break
	
	case "thief_cat":
		inst_enemy_id = instance_create_layer(x, y, "Instances", obj_combat_makeup_cat)
	break
	
	case "monkey":
		inst_enemy_id = instance_create_layer(x, y, "Instances", obj_combat_makeup_monkey)
	break
}

inst_enemy_id.makeup_actor = self
inst_enemy_id.start_attack(inst_target_id)

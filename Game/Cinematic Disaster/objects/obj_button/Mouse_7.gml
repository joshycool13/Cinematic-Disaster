
switch (button_id)
{
	case 0: // Attack
		obj_combat_state.player_attack()
	break;
	
	case 1: // Item
		obj_combat_state.use_item_temp()
	break;
	
	case 2: // Defense
		obj_combat_state.start_player_defending()
	break;
}
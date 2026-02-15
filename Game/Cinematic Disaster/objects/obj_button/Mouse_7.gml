
switch (button_id)
{
	case 0: // Attack
		obj_combat_state.start_player_attacking()
		obj_combat_player.start_player_temp_attack()
	break;
	
	case 1: // Item
		obj_combat_state.start_player_attacking()
	break;
	
	case 2: // Defense
		obj_combat_state.start_player_defending()
	break;
}
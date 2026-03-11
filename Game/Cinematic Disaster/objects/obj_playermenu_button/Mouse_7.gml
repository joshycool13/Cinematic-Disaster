switch (button_name)
{
	case "Attack":
		obj_combat_state.attack_menu()
	break;
	
	case "Item":
		obj_combat_state.item_menu()
	break;
	
	case "Defend":
		obj_combat_state.defend_menu()
	break;
	
	case "Back":
		obj_combat_state.player_menu()
	break;
}
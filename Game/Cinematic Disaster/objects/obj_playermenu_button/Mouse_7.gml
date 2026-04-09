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
		if obj_combat_state.is_player_turn == true
		{
			obj_combat_state.player_menu()
		}
		else if obj_combat_state.is_player_turn == false
		{
			obj_combat_state.enemy_menu()
		}
		
	break;
	
	case "default_attack":
		obj_combat_state.select_menu(button_name, tp_cost)
	break;
	
	case "default_defend":
		obj_combat_state.player_defend(button_name)
	break;
	
	case "corp_drink":
		var temp_button_name = button_name
		button_name = ""
		obj_combat_state.player_item(temp_button_name, 0)
	break;
	
	case "rotten_tomato":
		obj_combat_state.select_menu(button_name, self)
	break;
	
	case "identify":
		obj_combat_state.select_menu(button_name, tp_cost)
	break;
}
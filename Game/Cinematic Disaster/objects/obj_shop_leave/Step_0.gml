
if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_released(mb_left)) {
	obj_roaming_player.go_to_item_shop = false
	obj_roaming_player.active = true
	
	
	if (global.combat_player_employees[$ "castagent"] > 0) {
		array_push(global.combat_player_attacks, "identify")
		array_push(global.combat_player_defends, "prediction")
			
	}
	if (global.combat_player_employees[$ "janitor"] > 0) {
		array_push(global.combat_player_attacks, "broom")
		array_push(global.combat_player_defends, "cleanse")
			
	}
	if (global.combat_player_employees[$ "janewick"] > 0) {
		array_push(global.combat_player_attacks, "flying_elbow")
		array_push(global.combat_player_attacks, "gun")
		array_push(global.combat_player_defends, "protect")
			
	}
	if (global.combat_player_employees[$ "makeup"] > 0) {
		array_push(global.combat_player_attacks, "disguise")
		array_push(global.combat_player_defends, "imitate")
		
	}
	if (global.combat_player_employees[$ "boomcrew"] > 0) {
		array_push(global.combat_player_attacks, "bomb")
		array_push(global.combat_player_defends, "landmine")
		array_push(global.combat_player_defends, "blast_shield")
	}
	
}



obj_pranavs_bandaid_solution_2.remove_reels()


if (distance_to_object(obj_roaming_player) < 32)
{
	layer_set_visible("RoamingUI", false)
	layer_set_visible("TutorialRoaming", false)
	layer_set_visible("TutorialRoaming_BG", false)
	
	//reset player's moves and load attacks and defends back into the arrays
	global.combat_player_attacks = []
	global.combat_player_defends = []
	
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
	
	
	// Enemies "rat", "dogcar", "shield", "thief_cat", "cyborg", "monkey"
	game_day = global.day;
	
	//day1
	if(game_day == 1) {
		
		if (serial_number == 1) or (serial_number == 2) {
			enemy1 = encounterScale[irandom_range(1, 2)];
			enemy2 = encounterScale[irandom_range(1, 2)];
			enemy3 = "";
			
		} else {
			enemy1 = "";
			enemy2 = "";
			enemy3 = "";
		}
	}


	//day2
	if(game_day ==2)
	{
		if (serial_number == 1){
			enemy1 = encounterScale[irandom_range(2, 3)];
			enemy2 = encounterScale[irandom_range(1, 2)];
			enemy3 = encounterScale[1];
			
		} else if (serial_number == 2) {
			enemy1 = encounterScale[irandom_range(2, 3)];
			enemy2 = encounterScale[irandom_range(2, 3)];
			enemy3 = "";
			
		} else {
			enemy1 = "";
			enemy2 = "";
			enemy3 = "";
		}
	}


	//day3
	if(game_day ==3)
	{
		if (serial_number == 1) {
			enemy1 = encounterScale[irandom_range(3, 4)];
			enemy2 = encounterScale[irandom_range(2, 3)];
			enemy3 = encounterScale[irandom_range(2, 3)];
			
		} else if (serial_number == 2) {
			enemy1 = encounterScale[irandom_range(4, 5)];
			enemy2 = ""
			enemy2 = ""
			
		} else {
			enemy1 = encounterScale[irandom_range(3, 4)];
			enemy2 = encounterScale[irandom_range(1, 3)];
			enemy2 = encounterScale[irandom_range(1, 3)];
		}
	}



	//day4
	if(game_day ==4)
	{
		if (serial_number == 1) {
			enemy1 = encounterScale[irandom_range(4, 6)];
			enemy2 = encounterScale[irandom_range(3, 5)];
			enemy3 = encounterScale[irandom_range(3, 4)];
			
		} else if (serial_number == 2) {
			enemy1 = encounterScale[irandom_range(4, 6)];
			enemy2 = encounterScale[irandom_range(3, 5)];
			enemy3 = ""
			
		} else {
			enemy1 = encounterScale[irandom_range(4, 6)];
			enemy2 = encounterScale[irandom_range(3, 5)];
			enemy2 = encounterScale[irandom_range(3, 4)];
		}
	}
	
		//day 5
	if(game_day ==5)
	{
		if (serial_number == 1) {
			enemy1 = encounterScale[irandom_range(5, 6)];
			enemy2 = encounterScale[irandom_range(5, 6)];
			enemy3 = encounterScale[irandom_range(4, 6)];
			
			enemy1 = encounterScale[irandom_range(5, 6)];
			enemy2 = encounterScale[irandom_range(5, 6)];
			enemy3 = encounterScale[irandom_range(4, 6)];
			
		} else {
			enemy1 = encounterScale[irandom_range(5, 6)];
			enemy2 = encounterScale[irandom_range(5, 6)];
			enemy3 = encounterScale[irandom_range(4, 6)];
		}
	}
	global.combats_complete[serial_number-1] = true 
	global.combat_enemies = [enemy1, enemy2, enemy3];
	room_goto_next()
}
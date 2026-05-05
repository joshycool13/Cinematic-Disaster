
obj_pranavs_bandaid_solution_2.remove_reels()


if place_meeting(x, y, obj_roaming_player)
{
	layer_set_visible("RoamingUI", false)
	layer_set_visible("TutorialRoaming", false)
	
	
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
	
	global.combat_enemies = [enemy1, enemy2, enemy3];
	room_goto_next()
}
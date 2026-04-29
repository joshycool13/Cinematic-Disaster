 if (array_length(global.combat_enemies) > 0)
 {
	 
	 if((global.combat_player_hp) != 0)
	 {
		 //win
		 global.player_money += (array_length(global.combat_enemies) * 40);
		 obj_dayManager.day_data.requiredEncounters -=1;
	 }
	 
	else{
		//loss
		
		
	}
	 
 }
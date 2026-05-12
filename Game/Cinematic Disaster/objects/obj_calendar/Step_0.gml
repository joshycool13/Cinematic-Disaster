
// run the progress check only once
if (progress_checked) exit

// everything after this runs only once

spawn_encounters()


if (array_length(global.combat_enemies) > 0) {
	//player has just returned from combat
	
	//fade in screen
	obj_screenfade.timer = 120
	
	//tick down the duration on employee contracts
	if (global.combat_player_employees[$ "castagent"] > 0) {
		global.combat_player_employees[$ "castagent"] -= 1
	}
	if (global.combat_player_employees[$ "janitor"] > 0) {
		global.combat_player_employees[$ "janitor"] -= 1
	}
	if (global.combat_player_employees[$ "janewick"] > 0) {
		global.combat_player_employees[$ "janewick"] -= 1

	}
	if (global.combat_player_employees[$ "makeup"] > 0) {
		global.combat_player_employees[$ "makeup"] -= 1

	}
	if (global.combat_player_employees[$ "boomcrew"] > 0) {
		global.combat_player_employees[$ "boomcrew"] -= 1

	}			
			
	//update attacks and defenses in case any moves are now used up
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
	
	
	if (global.combat_player_hp == 0) {
		//player died, reset the spawns
		global.combats_complete = [false, false, false]
		
		spawn_encounters()
		
		obj_shop_shop.shop_refresh()
		
		// heal the player for X amount so they can continue the game
		global.combat_player_hp = 10
		
	} 
	else if (global.combat_player_hp > 0) {
		//player won
		//reward money
		//40 per enemy, plus 10% for each day after the first
		global.player_money += 40 * array_length(global.combat_enemies) * (1 + (global.day - 1)*.10)
		
		//progress the day if all encounters are done
		if (global.combats_complete[0] == true) and (global.combats_complete[1] == true) and (global.combats_complete[2] == true) {
			
			//increment day
			global.day += 1
			
			// go to ending if previous day was 5
			if (global.day == 6) {
				obj_roaming_player.active = false
				obj_roaming_player.go_to_ending = true
			}
			
			//randomize the shop
			obj_shop_shop.shop_refresh()
			
			//reset the spawns
			global.combats_complete = [false, false, false]
		
			spawn_encounters()
			
			// heal the player to full? Joshua says yes a little bit
			global.combat_player_hp += 10
			if (global.combat_player_hp >= 20) {
				global.combat_player_hp = 20
			}
			
			//randomize the shop
			obj_shop_shop.shop_refresh()
			
		}
		
	}
	
} else {
	// game has just started, do nothing else
}

progress_checked = true
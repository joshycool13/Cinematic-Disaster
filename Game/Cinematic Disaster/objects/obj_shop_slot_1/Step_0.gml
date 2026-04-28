//attempt buy if player clicks the buy button
//this approach will not require a separate buy button
// if buy button is clicked
if (global.player_money < price) {
	locked = true
} else if (item_or_actor == 0) and (global.combat_player_employees[$ actor_select] == true) {
	locked = true
} else {
	locked = false
}

if (locked = false) {
	if (mouse_x >= x+26) && (mouse_x <= x+86) && (mouse_y >= y+33) && (mouse_y <= y+96) && 
		(mouse_check_button_pressed(mb_left)) {
		
		if (item_or_actor = 1) { // buying an item
			//check if exceeding item cap??? future addition
			if (global.player_money >= price) {
				global.player_money -= price
				global.combat_player_items[$ item_select] += 1
			}
		} else { // buying an actor
			if (global.combat_player_employees[$ actor_select] == false) && 
				(global.player_money >= price) { //does not already own actor and has enough money
				global.player_money -= price
				global.combat_player_employees[$ actor_select] = true
			} 
		}
	}
}

//visual
//indicate that the button is pressed when it is being pressed
if (locked = true) {
	pressed = 2;
}
else if (mouse_x >= x+26) && (mouse_x <= x+86) && (mouse_y >= y+33) && (mouse_y <= y+96) && 
	(mouse_check_button_pressed(mb_left)) { 
	pressed = 1;	
} 
else if (mouse_check_button_released(mb_left)) {
	pressed = 0;
}
image_index = pressed;
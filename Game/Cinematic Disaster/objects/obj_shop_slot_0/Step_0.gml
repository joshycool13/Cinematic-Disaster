

// set the item or employee this slot of the shop sells
//this is now in the step event because of obj_calendar's refresh also having to be in the step event
item_select = global.item_list[slot_number]
actor_select = global.actor_list[slot_number]

item_or_actor = 1 //if 1, sells items, if 0, sells employees
if (slot_number > 2) {
	item_or_actor = 0
}

if (item_or_actor == 1) {
	product = item_select
	price = product_price[$ item_select]
} else {
	product = actor_select
	price = product_price[$ actor_select]
}



//attempt buy if player clicks the buy button
//this approach will not require a separate buy button
// if buy button is clicked
if (global.player_money < price) {
	locked = true
} else if (item_or_actor == 0) and (global.combat_player_employees[$ product] > 0) {
	locked = true
} else if (item_or_actor == 1) and (array_length(global.combat_player_items) >= 9) {
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
				array_push(global.combat_player_items, product)
			}
		} else { // buying an actor
			if (global.combat_player_employees[$ product] == 0) && 
				(global.player_money >= price) { //does not already own actor and has enough money
				global.player_money -= price
				global.combat_player_employees[$ product] = 3
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
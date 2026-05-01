
if (held == "coffee") or (held == "drink") {  
	can_use = true
} else {
	can_use = false
}

// figure out which one is this slot's held item
if (array_length(global.combat_player_items) >= slot_number) {
	held = global.combat_player_items[slot_number - 1]
} else {
	held = ""
}

// if the item can be used, and this slot gets clicked, consume it
if (can_use) and (mouse_check_button_pressed(mb_left)) and (distance_to_point(mouse_x, mouse_y) <= 1) {
	if (held == "coffee") { // click on coffee
		array_delete(global.combat_player_items, slot_number - 1, 1)
		if (global.combat_player_tp > 10) {
			//attempt fails
		} else { // drink coffee
			global.combat_player_tp += 5
			if (global.combat_player_tp > 10) { //prevent overcapping
				global.combat_player_tp = 10
			}
		}
		
	} else if (held == "drink") {
		global.combat_player_hp += 10
		if (global.combat_player_hp > 20) {
			global.combat_player_hp = 20
		}
		array_delete(global.combat_player_items, slot_number - 1, 1)
	}
}
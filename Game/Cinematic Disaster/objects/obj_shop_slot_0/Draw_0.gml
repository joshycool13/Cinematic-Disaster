
draw_self()

if (locked = true) {
	draw_set_colour(c_red) 
}

draw_set_font(Font1)

draw_text(x-56, y+56, "$" + string(price)) //price display

/*
//debug: display change in items owned
if (item_or_actor) {
	draw_text(x + 64, y, global.combat_player_items[$ item_select])
} else {
	draw_text(x + 64, y, global.combat_player_employees[$ actor_select])	
}
*/


// draw the sprite and name of whatever u are buying
//item_list = ["coffee", "drink", "flashbang", "linechange", "rag", "reel", "tomato"]
//actor_list = ["castagent", "janitor", "makeup", "boomcrew", "janewick"]
draw_set_font(font_shop1)

if (product = "coffee") {
	draw_sprite_stretched(spr_item_coffee, 0,  x-50, y-80, 96, 96)
	if (locked = false){
		draw_text(x-84, y+24, "Coffee")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
	
} else if (product = "drink") {
	draw_sprite_stretched(spr_item_corporate_drink, 0,  x-50, y-80, 96, 96)
	if (locked = false){
		draw_text(x-84, y+24, "Drinkerade")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
	
} else if (product = "flashbang") {
	draw_sprite_stretched(spr_item_flashbang, 0,   x-50, y-80, 96, 96)
	if (locked = false){
		draw_text(x-84, y+24, "Flashbang")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
	
} else if (product = "linechange") {
	draw_sprite_stretched(spr_item_line_change, 0,   x-50, y-80, 96, 96)
	if (locked = false){
		draw_text(x-84, y+24, "Line Change")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
	
} else if (product = "rag") {
	draw_sprite_stretched(spr_item_rag, 0,   x-50, y-80, 96, 96)
	if (locked = false){
		draw_text(x-84, y+24, "Rag")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
	
} else if (product = "reel") {
	draw_sprite_stretched(spr_item_reel, 0,   x-50, y-80, 96, 96)
	if (locked = false){
		draw_text(x-84, y+24, "Reel")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
	
} else if (product = "tomato") {
	draw_sprite_stretched(spr_item_rotten_tomato, 0,   x-50, y-80, 96, 96)
	if (locked = false){
		draw_text(x-84, y+24, "Tomato")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
} 



if (product = "castagent") {
	draw_sprite_stretched(spr_shop_hire_castagent, 0, x-50, y-80, 96, 96)
	if (locked = false) and (global.combat_player_employees[$ product] == 0) {
		draw_text(x-84, y+24, "Casting Agent")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
	
} else if (product = "janitor") {
	draw_sprite_stretched(spr_shop_hire_janitor, 0, x-50, y-80, 96, 96)
	if (locked = false) and (global.combat_player_employees[$ product] == 0) {
		draw_text(x-84, y+24, "Custodian")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
	
} else if (product = "makeup") {
	draw_sprite_stretched(spr_shop_hire_makeup, 0, x-50, y-80, 96, 96)
	if (locked = false) and (global.combat_player_employees[$ product] == 0) {
		draw_text(x-84, y+24, "Makeup Artist")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
	
} else if (product = "boomcrew") {
	draw_sprite_stretched(spr_shop_hire_boomcrew, 0, x-50, y-80, 96, 96)
	if (locked = false) and (global.combat_player_employees[$ product] == 0) {
		draw_text(x-84, y+24, "Demolition Man")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
	
} else if (product = "janewick") {
	draw_sprite_stretched(spr_shop_hire_janewick, 0, x-50, y-80, 96, 96) 
	if (locked = false) and (global.combat_player_employees[$ product] == 0) {
		draw_text(x-84, y+24, "Actor Jane Wick")
	} else {
		draw_text(x-84, y+24, "Can't Buy")
	}
}

draw_set_font(Font1)
draw_set_colour(c_white)
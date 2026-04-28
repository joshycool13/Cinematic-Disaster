
draw_self()

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
	draw_text(x-84, y+24, "Coffee")
	
} else if (product = "drink") {
	draw_sprite_stretched(spr_item_corporate_drink, 0,  x-50, y-80, 96, 96)
	draw_text(x-84, y+24, "Drinkerade")
	
} else if (product = "flashbang") {
	draw_sprite_stretched(spr_item_flashbang, 0,   x-50, y-80, 96, 96)
	draw_text(x-84, y+24, "Flashbang")
	
} else if (product = "linechange") {
	draw_sprite_stretched(spr_item_line_change, 0,   x-50, y-80, 96, 96)
	draw_text(x-84, y+24, "Line Change")
	
} else if (product = "rag") {
	draw_sprite_stretched(spr_item_rag, 0,   x-50, y-80, 96, 96)
	draw_text(x-84, y+24, "Rag")
	
} else if (product = "reel") {
	draw_sprite_stretched(spr_item_reel, 0,   x-50, y-80, 96, 96)
	draw_text(x-84, y+24, "Reel")
	
} else if (product = "tomato") {
	draw_sprite_stretched(spr_item_rotten_tomato, 0,   x-50, y-80, 96, 96)
	draw_text(x-84, y+24, "Tomato")
} 

if (product = "castagent") {
	draw_sprite_stretched(spr_hire_castagent_idle, 0, x+32, y+20, 96, 96)
	draw_text(x-84, y+24, "Casting Agent")
	
} else if (product = "janitor") {
	draw_sprite_stretched(spr_hire_janitor_broom_ready, 0, x+32, y+20, 96, 96)
	draw_text(x-84, y+24, "Custodian")
	
} else if (product = "makeup") {
	draw_sprite_stretched(spr_hire_makeup_copy, 0, x+32, y+20, 96, 96)
	draw_text(x-84, y+24, "Makeup Artist")
	
} else if (product = "boomcrew") {
	draw_sprite_stretched(spr_hire_boomcrew_bomb_aiming, 0, x+32, y+20, 96, 96)
	draw_text(x-84, y+24, "Demolition Man")
	
} else if (product = "janewick") {
	draw_sprite_stretched(spr_hire_janewick_gun_idle, 0, x+32, y+20, 96, 96) 
	draw_text(x-84, y+24, "Actor Jane Wick")
}

draw_set_font(Font1)

draw_self()

draw_text(x-40, y+36, "$ " + string(price)) //price display
draw_text(x, y+20, product) //name display

//debug: display change in items owned

if (item_or_actor) {
	draw_text(x + 64, y, global.combat_player_items[$ item_select])
} else {
	draw_text(x + 64, y, global.combat_player_employees[$ actor_select])	
}



// draw the sprite of whatever u are buying
//item_list = ["coffee", "drink", "flashbang", "linechange", "rag", "reel", "tomato"]
//actor_list = ["castagent", "janitor", "makeup", "boomcrew", "janewick"]

if (product = "coffee") {
	draw_sprite(spr_item_coffee, 0, x, y-16)
	
} else if (product = "drink") {
	draw_sprite(spr_item_corporate_drink, 0, x, y-16)
	
} else if (product = "flashbang") {
	draw_sprite(spr_item_flashbang, 0, x, y-16)
	
} else if (product = "linechange") {
	draw_sprite(spr_item_line_change, 0, x, y-16)
	
} else if (product = "rag") {
	draw_sprite(spr_item_rag, 0, x, y-16)
	
} else if (product = "reel") {
	draw_sprite(spr_item_reel, 0, x, y-16)
	
} else if (product = "tomato") {
	draw_sprite(spr_item_rotten_tomato, 0, x, y-16)	
} 

if (product = "castagent") {
	draw_sprite(spr_hire_castagent_idle, 0, x+32, y+16)
	
} else if (product = "janitor") {
	draw_sprite(spr_hire_janitor_broom_ready, 0, x+32, y+16)
	
} else if (product = "makeup") {
	draw_sprite(spr_hire_makeup_copy, 0, x+32, y+16)
	
} else if (product = "boomcrew") {
	draw_sprite(spr_hire_boomcrew_bomb_aiming, 0, x+32, y+16)
	
} else if (product = "janewick") {
	draw_sprite(spr_hire_janewick_gun_idle, 0, x+32, y+16) 
}

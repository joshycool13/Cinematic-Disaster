draw_self()

if (can_use) {
draw_set_colour(c_green)
draw_rectangle(x-36, y-36, x+36, y+36, 1)
}

draw_set_colour(c_white)
//draw_text(x, y, held)

if (held = "coffee") {
	draw_sprite(spr_item_coffee, 0 , x, y)
	
} else if (held = "drink") {
	draw_sprite(spr_item_corporate_drink, 0 , x, y)
	
} else if (held = "flashbang") {
	draw_sprite(spr_item_flashbang, 0 , x, y)
	
} else if (held = "linechange") {
	draw_sprite(spr_item_line_change, 0 , x, y)
	
} else if (held = "reel") {
	draw_sprite(spr_item_reel, 0 , x, y)
	
} else if (held = "rag") {
	draw_sprite(spr_item_rag, 0 , x, y)
	
} else if (held = "tomato") {
	draw_sprite(spr_item_rotten_tomato, 0 , x, y)
	
}

draw_set_font(font_shop2)

if (distance_to_point(mouse_x, mouse_y) <= 1) {
	if (held = "coffee") {
		draw_sprite_stretched(spr_guibg_red, 0, mouse_x, mouse_y, 250, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Coffee:")
		draw_text(mouse_x + 10, mouse_y + 30, "Recovers up to 5 TP.")
		
	} else if (held = "drink") {
		draw_sprite_stretched(spr_guibg_red, 0, mouse_x, mouse_y, 250, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Drinkerade:")
		draw_text(mouse_x + 10, mouse_y + 30, "Recovers up to 10 HP.")
		
	} else if (held = "flashbang") {
		draw_sprite_stretched(spr_guibg_red, 0, mouse_x, mouse_y, 250, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Flashbang:")
		draw_text(mouse_x + 10, mouse_y + 30, "Stuns the enemy.")
		
	} else if (held = "linechange") {
		draw_sprite_stretched(spr_guibg_red, 0, mouse_x, mouse_y, 250, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Line Change:")
		draw_text(mouse_x + 10, mouse_y + 30, "Do you feel changed?")
		
	} else if (held = "reel") {
		draw_sprite_stretched(spr_guibg_red, 0, mouse_x, mouse_y, 250, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Reel:")
		draw_text(mouse_x + 10, mouse_y + 30, "For reel!")
		
	} else if (held = "rag") {
		draw_sprite_stretched(spr_guibg_red, 0, mouse_x, mouse_y, 250, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Rag:")
		draw_text(mouse_x + 10, mouse_y + 30, "Cure all negative effects on yourself.")
		
	} else if (held = "tomato") {
		draw_sprite_stretched(spr_guibg_red, 0, mouse_x, mouse_y, 250, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Tomato")
		draw_text(mouse_x + 10, mouse_y + 30, "Hurt and poison an enemy.")
		
	}
}

draw_set_font(Font1)

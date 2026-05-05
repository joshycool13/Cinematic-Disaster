draw_self()

if (held = "castagent") {
	draw_sprite(spr_shop_hire_castagent, 0 , x, y)
	
} else if (held = "janewick") {
	draw_sprite(spr_shop_hire_janewick, 0 , x, y)
	
} else if (held = "janitor") {
	draw_sprite(spr_shop_hire_janitor, 0 , x, y)
	
} else if (held = "boomcrew") {
	draw_sprite(spr_shop_hire_boomcrew, 0 , x, y)
	
} else if (held = "makeup") {
	draw_sprite(spr_shop_hire_makeup, 0 , x, y)
	
}

draw_set_font(font_shop2)

if (distance_to_point(mouse_x, mouse_y) <= 1) {
	if (held = "castagent") {
		draw_sprite_stretched(spr_guibg_purple, 0, mouse_x, mouse_y, 300, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Casting Agent:")
		draw_text(mouse_x + 10, mouse_y + 35, "Tirelessly rejecting applications.")
		draw_text(mouse_x + 10, mouse_y + 60, "Her attack reveals the")
		draw_text(mouse_x + 10, mouse_y + 85, "enemy's HP.")
		
	} else if (held = "janewick") {
		draw_sprite_stretched(spr_guibg_purple, 0, mouse_x, mouse_y, 300, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Jane Wick:")
		draw_text(mouse_x + 10, mouse_y + 35, "A virtuoso of martial arts.")
		draw_text(mouse_x + 10, mouse_y + 60, "She can protect, attack,")
		draw_text(mouse_x + 10, mouse_y + 85, "or jump on them flat.")
		
	} else if (held = "janitor") {
		draw_sprite_stretched(spr_guibg_purple, 0, mouse_x, mouse_y, 300, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Custodian:")
		draw_text(mouse_x + 10, mouse_y + 35, "Caution: Wet Floor.")
		draw_text(mouse_x + 10, mouse_y + 60, "Can make the enemy wet")
		draw_text(mouse_x + 10, mouse_y + 85, "or block a nasty debuff.")
		
	} else if (held = "boomcrew") {
		draw_sprite_stretched(spr_guibg_purple, 0, mouse_x, mouse_y, 300, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Demolition Man:")
		draw_text(mouse_x + 10, mouse_y + 35, "He doesn't have a permit.")
		draw_text(mouse_x + 10, mouse_y + 60, "He can lob bombs, plant mines,")
		draw_text(mouse_x + 10, mouse_y + 85, "or block with his shield.")
		
	} else if (held = "makeup") {
		draw_sprite_stretched(spr_guibg_purple, 0, mouse_x, mouse_y, 300, 200)
		draw_text(mouse_x + 25, mouse_y + 10, "Makeup Artist:")
		draw_text(mouse_x + 10, mouse_y + 35, "She's very flexible.")
		draw_text(mouse_x + 10, mouse_y + 60, "Can copy one of the ")
		draw_text(mouse_x + 10, mouse_y + 85, "enemy's attacks herself.")
		
	}
	
	draw_text(mouse_x + 10, mouse_y + 150, "Days left: " + string(global.combat_player_employees[$ held]))
}

//reset held so that it updates correctly
held = ""

draw_set_font(Font1)
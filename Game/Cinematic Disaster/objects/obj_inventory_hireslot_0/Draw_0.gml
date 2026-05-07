
draw_set_halign(fa_left)
draw_set_valign(fa_top)

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
draw_set_colour(c_black)

if (distance_to_point(mouse_x, mouse_y) <= 1) {
	if (held = "castagent") {
		draw_sprite_stretched(spr_guibg_white, 0, x + 48, y - 32 - 96*slot_number, 300, 400)
		draw_text(x + 55, y - 20 - 96*slot_number, string(@"Casting Agent: 
Tirelessly rejecting applications.
Her attack reveals the enemy's HP.
Her defense assists your dodging
ability greatly.

Fights left: {0}", global.combat_player_employees[$ held]))
		
	} else if (held = "janewick") {
		draw_sprite_stretched(spr_guibg_white, 0, x + 48, y - 32 - 96*slot_number, 300, 400)
		draw_text(x + 55, y - 20 - 96*slot_number, string(@"Jane Wick: 
A virtuoso of martial arts cinema.
She can shoot rapidly, or jump
high and elbow drop an enemy.
Her defense lets her step in
for you during the defense stage,
and heals 3 TP.

Fights left: {0}", global.combat_player_employees[$ held]))
		
	} else if (held = "janitor") {
		draw_sprite_stretched(spr_guibg_white, 0, x + 48, y - 32 - 96*slot_number, 300, 400)
		draw_text(x + 55, y - 20 - 96*slot_number, string(@"Janitor: 
His hobby is painting.
His attack applies Wet, which
amplifies damage dealt this
and next turn.
His defense blocks status effects
that would have applied this turn,
and heals 1 TP.

Fights left: {0}", global.combat_player_employees[$ held]))
		
	} else if (held = "boomcrew") {
		draw_sprite_stretched(spr_guibg_white, 0, x + 48, y - 32 - 96*slot_number, 300, 400)
		draw_text(x + 55, y - 20 - 96*slot_number, string(@"Demolition Man: 
May or may not be licensed.
His bombs damage all enemies.
His landmine hurts enemies back,
and heals 4 TP.
His blast shield caps the damage
you take, and heals 1 TP.

Fights left: {0}", global.combat_player_employees[$ held]))
		
	} else if (held = "makeup") {
		draw_sprite_stretched(spr_guibg_white, 0, x + 48, y - 32 - 96*slot_number, 300, 400)
		draw_text(x + 55, y - 20 - 96*slot_number, string(@"Makeup Artist: 
Former star of silent cinema.
She uses a random enemy's
attack as her own attack.
She uses a random defense as 
her own defense.

Fights left: {0}", global.combat_player_employees[$ held]))
		
	}
	
	
}

//reset held so that it updates correctly
held = ""

draw_set_font(Font1)
draw_set_colour(c_white)

//tooltips display
draw_set_colour(c_white)
draw_set_font(font_shop2)

if (distance_to_point(mouse_x, mouse_y) <= 1) {
	if (product = "castagent") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Casting Agent: 
Tirelessly rejecting applications.
Her attack reveals the enemy's HP.
Her defense assists your dodging
ability greatly.

"))
		
	} else if (product = "janewick") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Jane Wick: 
A virtuoso of martial arts cinema.
She can shoot rapidly, or jump
high and elbow drop an enemy.
Her defense lets her step in
for you during the defense stage,
and heals 3 TP.

"))
		
	} else if (product = "janitor") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Custodian: 
His hobby is painting.
His attack applies Wet, which
amplifies damage dealt this
and next turn.
His defense blocks status effects
that would have applied this turn,
and heals 1 TP.

"))
		
	} else if (product = "boomcrew") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Demolition Man: 
May or may not be licensed.
His bombs damage all enemies.
His landmine hurts enemies back,
and heals 4 TP.
His blast shield caps the damage
you take and heals 1 TP.

"))
		
	} else if (product = "makeup") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Makeup Artist: 
Former star of silent cinema.
She uses a random enemy's
attack as her own attack.
She uses a random defense as 
her own defense.

"))
		
		
	} else if (product = "coffee") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Coffee: 
Three shots expresso 
and no sugar.
Recovers up to 5 TP.
Can be used out of combat.

"))
	
		
	} else if (product = "drink") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Energy Drink: 
New and improved formula
in stores now!
Recovers up to 10 HP.
Can be used out of combat.

"))
	
		
	} else if (product = "flashbang") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Flashbang: 
Look away!
Stuns an enemy for 1 turn.

"))
	
		
	} else if (product = "rag") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Towel: 
Do you feel unclean?
Clears all negative effects
on yourself.

"))
	
		
	} else if (product = "reel") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Reel: 
B-roll from another movie.
Can be resold for a 
random amount of money.
"))
	
		
	} else if (product = "tomato") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Rotten Tomato: 
A scathing critique.
Deals 2 damage and 
poisons an enemy.

"))
	
		
	} else if (product = "linechange") {
		draw_sprite_stretched(spr_guibg_black_thick, 0, 250, 100,  350, 400)
		draw_text(270, 120, string(@"Line Change: 
Let's get a little creative.
Perform a random
attack skill.

"))
	
	}
}
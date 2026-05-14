if draw_underline
{	
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(font_shop2)
	draw_set_colour(c_white)
	
	// Max 500 X, 350 Y
	
	switch (button_name)
	{
		// Defaults
		case "default_attack":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 400, 200)
			draw_text(mouse_x + 55, mouse_y - 20, @"Attack with your signature clapperboard.

Press Space when there's a sparkle to attack.

TP Cost: 0
Damage: 2")
		break;
		
		case "default_defend":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 350, 110)
			draw_text(mouse_x + 55, mouse_y - 20, @"Yell at your enemies. It does nothing.

TP Gain: 1")
		break;
		
		// Attacks
		case "identify":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 450, 230)
			draw_text(mouse_x + 55, mouse_y - 20, @"Casting Agent looks an enemy up on her computer.

Press Space when the plus is inside the target.
Success will allow you to see the enemy's health.

TP Cost: 1
Damage: 2")
		break;
		
		case "broom":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 500, 230)
			draw_text(mouse_x + 55, mouse_y - 20, @"Custodian stabs the enemy with his mop.

Press Space when there's a sparkle to attack.
Success will wet them, increasing their damage taken.

TP Cost: 2
Damage: 4")
		break;
		
		case "flying_elbow":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 500, 200)
			draw_text(mouse_x + 55, mouse_y - 20, @"Jane Wick jumps and elbow drops an unsuspecting enemy.

Press Space while Jane Wick is falling.

TP Cost: 4
Damage: 8")
		break;
		
		case "gun":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 400, 200)
			draw_text(mouse_x + 55, mouse_y - 20, @"Jane Wick shoots a gun.

MASH THE SPACEBAR!!!!

TP Cost: 4
Damage: HOWEVER FAST YOU MASH!")
		break;
		
		case "disguise":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 450, 110)
			draw_text(mouse_x + 55, mouse_y - 20, @"Makeup Artist disguises as an enemy and attacks.

TP Cost: 2")
		break;
		
		case "bomb":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 500, 230)
			draw_text(mouse_x + 55, mouse_y - 20, @"Demolition Man throws a bomb at the enemies.

Press Space when the slider is in the green part of the bar.
This attack will hit all enemies.

TP Cost: 4
Damage: 5")
		break;
		
		// Defends
		case "prediction":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 400, 170)
			draw_text(mouse_x + 55, mouse_y - 20, @"Casting Agent reads you a file on the enemy.

Dodging becomes way easier.

TP Gain: 0")
		break;
		
		case "cleanse":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 350, 170)
			draw_text(mouse_x + 55, mouse_y - 20, @"Custodian sprays you clean.

Status Effects aren't applied to you.

TP Gain: 1")
		break;
		
		case "protect":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 400, 170)
			draw_text(mouse_x + 55, mouse_y - 20, @"Jane Wick takes your place in dodging.

Dodging is hard, but you take less damage.

TP Gain: 3")
		break;
		
		case "imitate":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 400, 170)
			draw_text(mouse_x + 55, mouse_y - 20, @"Makeup Artist disguises as you or your hires.

Use a random Defend Skill

TP Gain: 4")
		break;
		
		case "landmine":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 450, 170)
			draw_text(mouse_x + 55, mouse_y - 20, @"Demolition Man places a landmine in front of you.

You cannot dodge, but they also take the damage.

TP Gain: 4")
		break;
		
		case "blast_shield":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 500, 170)
			draw_text(mouse_x + 55, mouse_y - 20, @"Demolition Man puts down a blast shield in front of you.

Damage dealt to you is capped.

TP Gain: 1")
		break;
		
		// Max 500 X, 260 Y
		
		// Items
		case "drink":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 400, 120)
			draw_text(mouse_x + 55, mouse_y - 20, @"New and improved formula, in stores now!

Recovers up to 10 HP.")
		break;
		
		case "coffee":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 350, 120)
			draw_text(mouse_x + 55, mouse_y - 20, @"Three shots expresso and no sugar.

Recovers up to 5 TP.")
		break;
		
		case "rag":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 350, 120)
			draw_text(mouse_x + 55, mouse_y - 20, @"Do you feel unclean?

Cure all negative effects on yourself.")
		break;
		
		case "linechange":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 300, 120)
			draw_text(mouse_x + 55, mouse_y - 20, @"Let's get a little creative.

Perform a random attack skill.")
		break;
		
		case "tomato":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 200, 120)
			draw_text(mouse_x + 55, mouse_y - 20, @"A scathing critique.

Poison an enemy")
		break;
		
		case "flashbang":
			draw_sprite_stretched(spr_guibg_black_thick, 0, mouse_x + 48, mouse_y - 32, 200, 120)
			draw_text(mouse_x + 55, mouse_y - 20, @"Look away!

Stuns the enemy.")
		break;
	}
}
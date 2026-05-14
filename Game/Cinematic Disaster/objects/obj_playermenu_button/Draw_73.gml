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
			
		break;
		
		// Attacks
		case "identify":
			
		break;
		
		case "broom":
			
		break;
		
		case "flying_elbow":
			
		break;
		
		case "gun":
			
		break;
		
		case "disguise":
			
		break;
		
		case "bomb":
			
		break;
		
		// Defends
		case "prediction":
			
		break;
		
		case "cleanse":
			
		break;
		
		case "protect":
			
		break;
		
		case "imitate":
			
		break;
		
		case "landmine":
			
		break;
		
		case "blast_shield":
			
		break;
		
		// Max 500 X, 260 Y
		
		// Items
		case "drink":
			
		break;
		
		case "coffee":
			
		break;
		
		case "rag":
			
		break;
		
		case "linechange":
			
		break;
		
		case "tomato":
			
		break;
		
		case "flashbang":
			
		break;
	}
}
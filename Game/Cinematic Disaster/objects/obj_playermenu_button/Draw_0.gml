draw_self()

draw_set_colour(c_black)
draw_set_font(Font1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

button_text = button_name

switch (button_name)
{
	// Defaults
	case "default_attack":
		button_text = "Clapperboard"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "default_defend":
		tp_cost = 1
		button_text = "Megaphone"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	// Attacks
	case "identify":
		tp_cost = 1
		button_text = "Identify"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "broom":
		tp_cost = 2
		button_text = "Sweeping Blow"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "flying_elbow":
		tp_cost = 4
		button_text = "Elbow Drop"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "gun":
		tp_cost = 4
		button_text = "Gun"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "disguise":
		tp_cost = 2
		button_text = "Disguise"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "bomb":
		tp_cost = 4
		button_text = "Bomb Throw"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	// Defends
	case "prediction":
		button_text = "Prediction"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "cleanse":
		tp_cost = 1
		button_text = "Cleanse"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "protect":
		tp_cost = 3
		button_text = "Bodyguard"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "imitate":
		tp_cost = 4
		button_text = "Imitate"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "landmine":
		tp_cost = 4
		button_text = "Landmine"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "blast_shield":
		tp_cost = 1
		button_text = "Blast Shield"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	// Items
	case "drink":
		button_text = "Energy Drink"
	break;
	
	case "coffee":
		button_text = "Coffee"
	break;
	
	case "rag":
		button_text = "Towel"
	break;
	
	case "linechange":
		button_text = "Line Change"
	break;
	
	case "tomato":
		button_text = "Rotten Tomato"
	break;
	
	case "flashbang":
		button_text = "Flashbang"
	break;
}

draw_text(x, y, button_text)

if draw_underline
{
	var text_width = string_width(button_text)
	draw_line_width(x - text_width/2, y+15, x + text_width/2, y+15, 3)
	
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(font_shop2)
	draw_set_colour(c_white)
	
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
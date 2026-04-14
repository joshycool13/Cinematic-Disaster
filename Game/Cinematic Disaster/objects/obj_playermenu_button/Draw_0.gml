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
		button_text = "Megaphone"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	// Attacks
	case "identify":
		tp_cost = 2
		button_text = "Identify"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "broom":
		tp_cost = 3
		button_text = "Sweeping"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "flying_elbow":
		tp_cost = 5
		button_text = "Falling Elbow"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "gun":
		tp_cost = 5
		button_text = "Gun"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "disguise":
		tp_cost = 5
		button_text = "Disguise"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "bomb":
		tp_cost = 5
		button_text = "Explosive Test"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	// Defends
	case "prediction":
		tp_cost = 1
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
		button_text = "Bodyguard"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	case "imitate":
		tp_cost = 3
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
	case "corp_drink":
		button_text = "Corporate Drink"
	break;
	
	case "coffee":
		button_text = "Coffee"
	break;
	
	case "rag":
		button_text = "Cleaning Rag"
	break;
	
	case "line_change":
		button_text = "Line Change"
	break;
	
	case "rotten_tomato":
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
}
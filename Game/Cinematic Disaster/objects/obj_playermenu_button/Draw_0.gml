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
	
	// Defends
	case "prediction":
		tp_cost = 1
		button_text = "Prediction"
		draw_sprite(spr_tp_icon, 0, x - 120, y)
		draw_text(x - 120, y, string(tp_cost))
	break;
	
	// Items
	case "corp_drink":
		button_text = "Corporate Drink"
	break;
	
	case "rotten_tomato":
		button_text = "Rotten Tomato"
	break;
}

draw_text(x, y, button_text)

if draw_underline
{
	var text_width = string_width(button_text)
	draw_line_width(x - text_width/2, y+15, x + text_width/2, y+15, 3)
}
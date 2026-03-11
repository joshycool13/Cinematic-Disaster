draw_self()

draw_set_colour(c_black)
draw_set_font(Font1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

switch (button_name)
{
	case "default_attack":
		draw_text(x, y, "Clapperboard")
	break;
	
	case "default_defend":
		draw_text(x, y, "Megaphone")
	break;
	
	default:
		draw_text(x, y, button_name)
	break;
}

if draw_underline
{
	var text_width = string_width(button_name)
	draw_line_width(x - text_width/2, y+15, x + text_width/2, y+15, 3)
}
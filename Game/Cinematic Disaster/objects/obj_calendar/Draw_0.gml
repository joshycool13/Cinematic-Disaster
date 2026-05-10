draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(Font2)

if (layer_get_visible("RoamingUI")) {
	draw_text(x, y, "Day: " + string(global.day))
	
	
	//quest display
	draw_text(x, y + 30, "Enemies left: \n  " + string(3 - global.combats_complete[0] - global.combats_complete[1] - global.combats_complete[2]))
}

/*
if (global.combats_complete[0] == 1) and (global.combats_complete[1] == 1) and (global.combats_complete[2] == 1)
	draw_text(500, 95, "Day complete")
*/

draw_set_font(Font1)

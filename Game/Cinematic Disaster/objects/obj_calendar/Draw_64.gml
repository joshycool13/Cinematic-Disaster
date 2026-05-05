

if (layer_get_visible("RoamingUI")) {
	draw_text(50, 95, "Day: " + string(global.day))
	
	
	//quest display
	draw_text(50, 120, "Enemies: " + string(3 - global.combats_complete[0] - global.combats_complete[1] - global.combats_complete[2]))
	draw_text(50, 140, string(global.combats_complete[0]) + string (global.combats_complete[1]) + string (global.combats_complete[2]))
}

/*
if (global.combats_complete[0] == 1) and (global.combats_complete[1] == 1) and (global.combats_complete[2] == 1)
	draw_text(500, 95, "Day complete")
*/


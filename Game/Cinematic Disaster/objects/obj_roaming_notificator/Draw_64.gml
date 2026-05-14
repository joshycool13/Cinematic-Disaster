

draw_set_halign(fa_center)
draw_set_colour(c_white)
draw_set_font(Font1)

draw_sprite_stretched(spr_guibg_pink_1, 0, x - selfwidth/2, y - selfheight/2, selfwidth, selfheight)


if (obj_calendar.won_or_lost) {
	//on loss
	draw_text(x, y + 20 - selfheight/2, string(@"You lost... but gained ${0}.
Shop has been refreshed.
All encounters have respawned.
(Click here to dismiss.)
", obj_calendar.money_awarded))
	
} else {
	// on win
	
	if (obj_calendar.new_day) {
	//new day
	draw_text(x, y + 20 - selfheight/2, string(@"You won and gained ${0}.
Shop has been refreshed.
It's a new day!
There are {1} encounters today.
(Click here to dismiss.)
", obj_calendar.money_awarded, (3 - global.combats_complete[0] - global.combats_complete[1] - global.combats_complete[2])))
	
	} else {
	//same day
	draw_text(x, y + 20 - selfheight/2, string(@"You won and gained ${0}.
There are {1} encounters left.
(Click here to dismiss.)
", obj_calendar.money_awarded, (3 - global.combats_complete[0] - global.combats_complete[1] - global.combats_complete[2])))

	}
}



draw_set_halign(fa_left)
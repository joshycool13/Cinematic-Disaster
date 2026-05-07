draw_self()

if draw_mash_text
{
	draw_set_colour(c_white)
	draw_set_font(Font1)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_rectangle(448, 480, 576, 544, false)
	draw_set_colour(c_black)
	draw_text(512, 512, "MASH!")
}
draw_self()

draw_set_colour(c_white)
draw_set_font(Font1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed(x-26,y+40,"HP",0.6,0.6,0)
draw_text_transformed(x+26,y+40,string(health_num),0.6,0.6,0)
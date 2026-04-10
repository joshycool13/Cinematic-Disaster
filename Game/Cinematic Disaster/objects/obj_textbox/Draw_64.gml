//Draw the box
draw_sprite_stretched(sprite_index, 0, x, y, width, height);

//Text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(txt_font);
type(x + text_x, y + text_y, text, text_progress, text_width);

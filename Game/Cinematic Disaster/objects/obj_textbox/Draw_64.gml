text_color = c_white;
//Get the screen dimensions
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// Set the height of textbox
var _box_h = 150; 

// Draw the box anchored to the bottom of the screen

draw_sprite_stretched(sprite_index, 0, 0, _gui_h - _box_h, _gui_w, _box_h);

// Draw the text relative to the NEW box position
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(txt_font);

// Adjust these offsets so the text sits inside the bar
type(20, (_gui_h - _box_h) + 20, text, text_progress, _gui_w - 40);
text_color = c_black;
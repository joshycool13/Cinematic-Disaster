text_color = c_white;
//Get the screen dimensions
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// Set the height of textbox
var _box_h = 150; 

//Draw the director's sprite if he is talking to a character
if (character != "")
	draw_sprite(spr_dialogue_player, 0, 100, _gui_h - _box_h)

//Draw the character's sprite, if their name was passed

if (character == "Pranav") {
	draw_sprite(spr_dialogue_npc_1, 0, _gui_w - 420, _gui_h - _box_h)
	
} else if (character == "Buddy") {
		draw_sprite(spr_dialogue_npc_2, 0, _gui_w - 420, _gui_h - _box_h)
		
} else if (character == "Laurie") {
		draw_sprite(spr_dialogue_npc_3, 0, _gui_w - 420, _gui_h - _box_h)
		
} else if (character == "Brooke") {
		draw_sprite(spr_dialogue_npc_4, 0, _gui_w - 420, _gui_h - _box_h)
		
} else if (character == "Neil") {
		draw_sprite(spr_dialogue_npc_5, 0, _gui_w - 420, _gui_h - _box_h)
		
} else if (character == "Leaves") {
		draw_sprite(spr_dialogue_npc_6, 0, _gui_w - 420, _gui_h - _box_h)
		
} else if (character == "Taxi") {
		draw_sprite(spr_dialogue_npc_7, 0, _gui_w - 420, _gui_h - _box_h)
		
} else if (character == "Granny") {
		draw_sprite(spr_dialogue_npc_8, 0, _gui_w - 420, _gui_h - _box_h)
		

}



// Draw the box anchored to the bottom of the screen

draw_sprite_stretched(sprite_index, 0, 0, _gui_h - _box_h, _gui_w, _box_h);

// Draw the text relative to the NEW box position
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(txt_font);

// Adjust these offsets so the text sits inside the bar
type(20, (_gui_h - _box_h) + 20, text, text_progress, _gui_w - 40);
//text_color = c_black;
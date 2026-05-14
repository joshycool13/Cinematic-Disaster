
// dismissed when clicked on or after 10 seconds

if ((mouse_x > x - selfwidth/2) or (mouse_x < x + selfwidth/2)
or (mouse_y > y - selfheight/2) or (mouse_y < y + selfheight/2)) 
and (mouse_check_button_pressed(mb_left))
	instance_destroy()

timer--
if (timer == 0) instance_destroy()
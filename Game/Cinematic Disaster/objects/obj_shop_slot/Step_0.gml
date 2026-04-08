
//indicate that the button is pressed when it is being pressed

if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) { 
	pressed = 1;	
} 
if (mouse_check_button_released(mb_left)) {
	pressed = 0;
}
image_index = pressed;
if (distance_to_point(mouse_x,mouse_y) <= 1) and mouse_check_button_pressed(mb_left){
	obj_roaming_player.go_to_credits = true
	obj_roaming_player.go_to_menu = false
}
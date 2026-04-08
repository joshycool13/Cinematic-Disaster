
if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) {
	obj_roaming_player.go_to_item_shop = false
	obj_roaming_player.active = false
}


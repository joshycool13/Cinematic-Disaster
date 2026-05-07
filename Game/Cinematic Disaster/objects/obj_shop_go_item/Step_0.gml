
if (distance_to_object(obj_roaming_player)<=32) && (keyboard_check_pressed(vk_space)) {
	obj_roaming_player.go_to_item_shop = true
	obj_roaming_player.active = false
	audio_play_sound(enter_menu_trim, 4, false)
}


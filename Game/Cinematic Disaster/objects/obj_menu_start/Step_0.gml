if (distance_to_point(mouse_x,mouse_y) <= 1) and mouse_check_button_pressed(mb_left){
	obj_roaming_player.active = true
	obj_roaming_player.go_to_menu = false
	audio_stop_sound(global.current_music)
	global.current_music = audio_play_sound(roaming_music, 10, true)
}
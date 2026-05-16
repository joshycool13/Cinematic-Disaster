/*if (distance_to_point(mouse_x,mouse_y) <= 1) and mouse_check_button_pressed(mb_left){
	obj_roaming_player.active = true
	obj_roaming_player.go_to_menu = false
	audio_stop_sound(global.current_music)
	global.current_music = audio_play_sound(roaming_music, 10, true)
	
	var sound_num = irandom(2)
	
	switch sound_num
	{
		case 0:
			audio_play_sound(button_pressed__1_, 2, false)
		break;
		
		case 1:
			audio_play_sound(button_pressed__2_, 2, false)
		break;
		
		case 2:
			audio_play_sound(button_pressed__3_, 2, false)
		break;
	}
	
}*/

if (distance_to_point(mouse_x,mouse_y) <= 1) and mouse_check_button_pressed(mb_left){
	layer_set_visible("RoamingUI", false)
	layer_set_visible("TutorialRoaming", false)
	layer_set_visible("TutorialRoaming_BG", false)
	
	global.combat_enemies = ["tutorialrat", "", ""]
	global.combat_player_items = ["drink"]
	
	var sound_num = irandom(2)
	
	switch sound_num
	{
		case 0:
			audio_play_sound(button_pressed__1_, 2, false)
		break;
		
		case 1:
			audio_play_sound(button_pressed__2_, 2, false)
		break;
		
		case 2:
			audio_play_sound(button_pressed__3_, 2, false)
		break;
	}
	
	room_goto_next()
}
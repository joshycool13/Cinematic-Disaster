if (distance_to_point(mouse_x,mouse_y) <= 1) and mouse_check_button_pressed(mb_left){
	obj_roaming_player.go_to_credits = true
	obj_roaming_player.go_to_menu = false
	
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
}
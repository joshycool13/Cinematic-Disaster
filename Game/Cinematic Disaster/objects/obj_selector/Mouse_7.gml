obj_combat_state.finished_selector(button_number)

var num_thing = irandom(2)
	
	switch num_thing
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
if (dialogue_complete == false) exit;


if (obj_roaming_player.go_to_ending == true) {
	// play ending dialogue and music
	
	switch (ending_progress) {
		case 0:
			audio_stop_sound(global.current_music)
			global.current_music = audio_play_sound(ending_music, 10, true)
			
			startDialogue("Ending1", "Director") // this only displays Director sprite
			ending_progress++
			dialogue_complete = false
		break;
		
		case 1:
			startDialogue("Ending2", "Granny")
			ending_progress++
			dialogue_complete = false
		break
		
		case 2:
			startDialogue("Ending0", "Director")
			ending_progress++
			dialogue_complete = false
		break
	
		case 3:
			startDialogue("Ending3", "Buddy")
			ending_progress++
			dialogue_complete = false
		break
		
		case 4:
			startDialogue("Ending0", "Director")
			ending_progress++
			dialogue_complete = false
		break
		
		case 5:
			startDialogue("Ending4", "Leaves")
			ending_progress++
			dialogue_complete = false
		break
		
		case 6:
			startDialogue("Ending0", "Director")
			ending_progress++
			dialogue_complete = false
		break
		
		case 7:
			startDialogue("Ending5", "Laurie")
			ending_progress++
			dialogue_complete = false
		break
		
		case 8:
			startDialogue("Ending0", "Director")
			ending_progress++
			dialogue_complete = false
		break
		
		case 9:
			startDialogue("Ending6", "Brooke")
			ending_progress++
			dialogue_complete = false
		break
		
		case 10:
			startDialogue("Ending0", "Director")
			ending_progress++
			dialogue_complete = false
		break
		
		case 11:
			startDialogue("Ending7", "Neil")
			ending_progress++
			dialogue_complete = false
		break
		
		case 12:
			startDialogue("Ending0", "Director")
			ending_progress++
			dialogue_complete = false
		break
		
		case 13:
			startDialogue("Ending8", "Pranav")
			ending_progress++
			dialogue_complete = false
		break
		
		case 14:
			startDialogue("Ending9", "") // no character portraits displayed.
			ending_progress++
			dialogue_complete = false
		break
		
		case 15:
			//do nothing, or close the game?
			game_end()
		break
		
		default:
			
	}
}
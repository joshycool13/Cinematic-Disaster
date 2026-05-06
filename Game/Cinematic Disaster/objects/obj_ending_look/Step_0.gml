if (dialogue_complete == false) exit;


if (obj_roaming_player.go_to_ending == true) {
	// play ending dialogue and music
	if (ending_progress == 0) {
		audio_stop_sound(global.current_music)
		global.current_music = audio_play_sound(ending_music, 10, true)
		
		
		ending_progress += 1
	} else if (ending_progress == 1) { 
		
	
	}
}
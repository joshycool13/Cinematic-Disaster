if global.started_game = true
{
	global.started_game = false
	global.current_music = audio_play_sound(title_music, 10, true)
}
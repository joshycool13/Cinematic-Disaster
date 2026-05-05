var _msg = event_data[? "message"];

audio_stop_sound(inst_fuse_sound)

if (_msg == "explosion sound") {
    var num_thing = irandom(1)
	
	switch num_thing
	{
		case 0:
			audio_play_sound(explosion__1_, 4, false)
		break;
		
		case 1:
			audio_play_sound(explosion__2_, 4, false)
		break;
	}
}
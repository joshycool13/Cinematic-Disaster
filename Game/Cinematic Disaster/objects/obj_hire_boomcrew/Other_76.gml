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
else if (_msg == "boomcrew mine place sound") {
	audio_play_sound(boomcrew_mine_place_trim, 4, false)
}
else if (_msg == "boomcrew shield place sound") {
	audio_play_sound(boomcrew_shield_place, 4, false)
}
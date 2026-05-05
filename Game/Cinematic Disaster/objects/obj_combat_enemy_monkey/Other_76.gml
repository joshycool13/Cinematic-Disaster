var _msg = event_data[? "message"];
if (_msg == "monkey shooting sound") {
    audio_play_sound(monkey_shooting_edit, 4, false);
}
else if (_msg == "monkey screech sound") {
    audio_play_sound(monkey_screech_reverb, 4, false);
}
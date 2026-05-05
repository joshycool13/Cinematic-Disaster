var _msg = event_data[? "message"];

if (_msg == "shine sound") {
    audio_play_sound(attack_shine, 4, false);
}
else if (_msg == "defaultattack fail sound") {
    audio_play_sound(defaultattack_fail_trim, 4, false);
}
else if (_msg == "defaultattack attack sound") {
    audio_play_sound(defaultattack_attack, 4, false);
}
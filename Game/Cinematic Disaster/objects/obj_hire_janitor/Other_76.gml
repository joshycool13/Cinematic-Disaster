var _msg = event_data[? "message"];
if (_msg == "janitor shine sound") {
    audio_play_sound(attack_shine, 4, false);
}
else if (_msg == "janitor broom attack sound") {
    audio_play_sound(janitor_broom_attack, 4, false);
}
else if (_msg == "janitor cleaner clean sound") {
    audio_play_sound(janitor_cleaner_clean, 4, false);
}
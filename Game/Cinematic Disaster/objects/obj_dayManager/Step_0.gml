if (global.combat_player_hp == 0){
//restart current day
requiredEncounters =3;
	
	//refresh shop
	obj_shop_shop.shop_refresh()
}


//check number of enemies

var _current_enemy_count = instance_number(obj_encounter_1);

//Progress the day

if(_current_enemy_count == 0 && !day_data.is_cleared) and (global.combat_player_hp != 0) {
	
	show_debug_message("Day " + string(day_data.game_day) + " Cleared!");
	
	day_data_cleared = true;
	
	//refresh shop
	obj_shop_shop.shop_refresh()
	
	//Trigger progression
	alarm[0] = (gamespeed_fps) * 2;
	
	audio_play_sound(changeday, 4, false)
}


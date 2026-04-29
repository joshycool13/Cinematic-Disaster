//check number of enemies

var _current_enemy_count = instance_number(obj_enemy_parent);

//Progress the day

if(_current_enemy_count == 0 && !day_data.is_cleared){
	
	show_debug_message("Day " + string(day_data.current_day) + " Cleared!");
	
	day_data_cleared = true;
	
	//Trigger progression
	alarm[0] = game_Get_speed(gamespeed_fps) * 2;
}

if(day_data.game_day == 1)
{
	DifficultyScale = 0;
}
else if(day_data.game_day == 2)
{
	DifficultyScale = 2;
}
else if(day_data.game_day == 3)
{
	DifficultyScale = 3;
}else if(day_data.game_day == 4)
{
	DifficultyScale = 4;
}
else if(day_data.game_day == 5)
{
	DifficultyScale = 5;
}
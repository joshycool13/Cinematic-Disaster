

if place_meeting(x, y, obj_roaming_player)
{
	
	if(obj_dayManager.day_data.game_day == 1)
	{
		startDialogue("Brooke1")
		
	}
	else if(obj_dayManager.day_data.game_day == 3)
	{
		startDialogue("Brooke2")
		
	}
		else if(obj_dayManager.day_data.game_day == 4)
	{
		startDialogue("Brooke3")
		
	}
	


}
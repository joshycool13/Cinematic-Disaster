if place_meeting(x, y, obj_roaming_player)
{
	
	
	if(obj_dayManager.day_data.game_day == 1)
	{
		startDialogue("Buddy1")
		
	}
	else if(obj_dayManager.day_data.game_day == 2)
	{
		startDialogue("Buddy2")
		
	}
		else if(obj_dayManager.day_data.game_day == 3)
	{
		startDialogue("Buddy3")
		
	}
	
}
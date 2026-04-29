if place_meeting(x, y, obj_roaming_player)
{
	
		if(obj_dayManager.day_data.game_day == 1)
	{
		startDialogue("Nick1")
		
	}
	else if(obj_dayManager.day_data.game_day == 2)
	{
		startDialogue("Nick2")
		
	}
		else if(obj_dayManager.day_data.game_day == 3)
	{
		startDialogue("Nick3")
		
	}

}
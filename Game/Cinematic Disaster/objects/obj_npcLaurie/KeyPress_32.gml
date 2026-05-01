if place_meeting(x, y, obj_roaming_player)
{
	
	if(obj_dayManager.day_data.game_day == 1)
	{
		startDialogue("Laurie1")
		
	}
	else if(obj_dayManager.day_data.game_day == 2)
	{
		startDialogue("Laurie2")
		
	}
		else if(obj_dayManager.day_data.game_day == 4)
	{
		startDialogue("Laurie3")
		
	}

}
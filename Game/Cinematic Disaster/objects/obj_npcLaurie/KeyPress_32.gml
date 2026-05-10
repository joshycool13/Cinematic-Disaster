if (distance_to_object(obj_roaming_player) < 32)
{
	
	if(global.day == 1)
	{
		startDialogue("Laurie1", "Laurie")
		
	}
	else if(global.day == 2)
	{
		startDialogue("Laurie2", "Laurie")
		
	}
		else if(global.day == 4)
	{
		startDialogue("Laurie3", "Laurie")
		
	}

}
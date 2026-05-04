obj_pranavs_bandaid_solution_2.remove_reels()


if place_meeting(x, y, obj_roaming_player)
{
	layer_set_visible("RoamingUI", false)
	layer_set_visible("TutorialRoaming", false)
	
	
	// Enemies "rat", "dogcar", "shield", "thief_cat", "cyborg", "monkey"
game_day = obj_dayManager.day_data.game_day;


//day1
if(obj_dayManager.day_data.game_day == 1)
{

enemy1 = irandom_range(1, 2);
enemy2 = irandom_range(1, 2);
enemy3= 0;

enemy1= global.encounterScale[enemy1];
enemy2 = global.encounterScale[enemy2];
enemy3= global.encounterScale[enemy3];

global.combat_enemies = [enemy1, enemy2, enemy3];
	
	
room_goto_next()

}


//day2
if(obj_dayManager.day_data.game_day ==2)
{

enemy1 = irandom_range(2,3);
enemy2 = irandom_range(1,3);
enemy3= irandom_range(0,1);

enemy1= global.encounterScale[enemy1];
enemy2 = global.encounterScale[enemy2];
enemy3= global.encounterScale[enemy3];

global.combat_enemies = [enemy1, enemy2, enemy3];

	
	
room_goto_next()

}


//day3
if(obj_dayManager.day_data.game_day ==3)
{

enemy1 = irandom_range(3,4);
enemy2 = 0;
enemy3= 0;

enemy1= global.encounterScale[enemy1];
enemy2 = global.encounterScale[enemy2];
enemy3= global.encounterScale[enemy3];


global.combat_enemies = [enemy1, enemy2, enemy3];
room_goto_next()

}



//day4
if(obj_dayManager.day_data.game_day ==4)
{

enemy1 = irandom_range(4,6);
enemy2 = irandom_range(3,5);
enemy3= 0;

enemy1= global.encounterScale[enemy1];
enemy2 = global.encounterScale[enemy2];
enemy3= global.encounterScale[enemy3];

global.combat_enemies = [enemy1, enemy2, enemy3];

	
room_goto_next()

}
	
	//day 5
if(obj_dayManager.day_data.game_day ==5)
{

enemy1 = irandom_range(5,6);
enemy2 = irandom_range(5,6);
enemy3= irandom_range(4,6);

enemy1= global.encounterScale[enemy1];
enemy2 = global.encounterScale[enemy2];
enemy3= global.encounterScale[enemy3];

global.combat_enemies = [enemy1, enemy2, enemy3];


room_goto_next()
}
}
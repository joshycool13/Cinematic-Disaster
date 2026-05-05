layer_set_visible("RoamingUI", true)
layer_set_visible("TutorialRoaming", true)
randomize();

if (serial_number==3) and (global.day < 3 ) {
	instance_destroy()
}

obj_roaming_player.enemies_left +=1;

encounterScale = ["", "rat", "dogcar", "shield", "thief_cat", "cyborg", "monkey"]


enemy1 = "";
enemy2 = "";
enemy3 = "";



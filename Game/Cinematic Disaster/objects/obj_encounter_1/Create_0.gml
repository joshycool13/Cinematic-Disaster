layer_set_visible("RoamingUI", true)
layer_set_visible("TutorialRoaming", true)
randomize();

if (serial_number==3) and (global.day < 3 ) {
	//third encounter does not exist on first 2 days
	instance_destroy()
	global.combats_complete[2] = true
	
} else if (global.combats_complete[serial_number-1] == true) {
	//remove self if encounter completed
	instance_destroy()
}



encounterScale = ["", "rat", "dogcar", "shield", "thief_cat", "cyborg", "monkey"]


enemy1 = "";
enemy2 = "";
enemy3 = "";



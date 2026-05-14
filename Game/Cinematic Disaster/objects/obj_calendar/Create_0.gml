
//we want to run the check in Step event because otherwise nothing works
//this variable will allow us to run Step only once
progress_checked = false

money_awarded = 0
won_or_lost = false
new_day = false

function spawn_encounters(){

	if not instance_exists(obj_encounter_1) and (global.combats_complete[0] == false) {
		if (global.day == 1) or (global.day == 4){
			instance_create_layer(272, 984, "Room_Objects", obj_encounter_1)
			instance_create_layer(272, 984, "Walls", obj_wall, {image_xscale : 2, image_yscale: 1.5})
		}
		else if (global.day == 2) or (global.day == 5){
			instance_create_layer(1428, 256, "Room_Objects", obj_encounter_1)
			instance_create_layer(1428, 256, "Walls", obj_wall, {image_xscale : 2, image_yscale: 1.5})
		}
		else if (global.day == 3){
			instance_create_layer(2400, 1536, "Room_Objects", obj_encounter_1)
			instance_create_layer(2400, 1536, "Walls", obj_wall, {image_xscale : 2, image_yscale: 1.5})
		}
	}
	
	
	if not instance_exists(obj_encounter_2) and (global.combats_complete[1] == false) {
		if (global.day == 1) or (global.day == 4){
			instance_create_layer(1662, 1488, "Room_Objects", obj_encounter_2)
			instance_create_layer(1662, 1488, "Walls", obj_wall, {image_xscale : 2.5, image_yscale: 3})
		} else if (global.day == 2) or (global.day == 5){
			instance_create_layer(1550, 960, "Room_Objects", obj_encounter_2)
			instance_create_layer(1550, 960, "Walls", obj_wall, {image_xscale : 2.5, image_yscale: 3})
		} else if (global.day == 3){
			instance_create_layer(340, 1472, "Room_Objects", obj_encounter_2)
			instance_create_layer(340, 1472, "Walls", obj_wall, {image_xscale : 2.5, image_yscale: 3})
		}
	}
	
	
	if not instance_exists(obj_encounter_3) and (global.combats_complete[2] == false) {
		if (global.day == 1) or (global.day == 4) {
			instance_create_layer(288, 288, "Room_Objects", obj_encounter_3)
			instance_create_layer(288, 288, "Walls", obj_wall, {image_xscale : 1, image_yscale: 2})
		} else if (global.day == 2) or (global.day == 5) {
			instance_create_layer(2304, 896, "Room_Objects", obj_encounter_3)
			instance_create_layer(2304, 896, "Walls", obj_wall, {image_xscale : 1, image_yscale: 2})
		} else if (global.day == 3) {
			instance_create_layer(896, 1056, "Room_Objects", obj_encounter_3)
			instance_create_layer(896, 1056, "Walls", obj_wall, {image_xscale : 1, image_yscale: 2})
		}
	}
}

function spawn_npcs() {
	instance_create_layer(2800, 1360, "Room_Objects", obj_npcBrooke, {image_xscale : 1.5, image_yscale: 1.5})
	instance_create_layer(1309, 750, "Room_Objects", obj_npcBuddy)
	instance_create_layer(1277, 1376, "Room_Objects", obj_npcGranny)
	instance_create_layer(2196, 1048, "Room_Objects", obj_npcLaurie)
	instance_create_layer(384, 236, "Room_Objects", obj_npcLeaves)
	instance_create_layer(160, 864, "Room_Objects", obj_npcNeil)
	instance_create_layer(593, 1357, "Room_Objects", obj_npcPranav)
	instance_create_layer(636, 1018, "Room_Objects", obj_npcTaxi)
	
}










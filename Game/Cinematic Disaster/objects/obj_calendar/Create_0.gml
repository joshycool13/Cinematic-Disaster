
//we want to run the check in Step event because otherwise nothing works
//this variable will allow us to run Step only once
progress_checked = false

function spawn_encounters(){

	if not instance_exists(obj_encounter_1) and (global.combats_complete[0] == false) {
		if (global.day == 1) or (global.day == 4){
			instance_create_layer(272, 984, "Room_Objects", obj_encounter_1)
			instance_create_layer(272, 984, "Walls", obj_wall, {image_xscale : 2, image_yscale: 1.5})
		}
		else if (global.day == 2) or (global.day == 5){
			instance_create_layer(1792, 320, "Room_Objects", obj_encounter_1)
			instance_create_layer(1792, 320, "Walls", obj_wall, {image_xscale : 2, image_yscale: 1.5})
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
			instance_create_layer(1312, 960, "Room_Objects", obj_encounter_2)
			instance_create_layer(1312, 960, "Walls", obj_wall, {image_xscale : 2.5, image_yscale: 3})
		} else if (global.day == 3){
			instance_create_layer(640, 1472, "Room_Objects", obj_encounter_2)
			instance_create_layer(640, 1472, "Walls", obj_wall, {image_xscale : 2.5, image_yscale: 3})
		}
	}
	
	
	if not instance_exists(obj_encounter_3) and (global.combats_complete[2] == false) {
		if (global.day == 1) or (global.day == 4) {
			instance_create_layer(288, 288, "Room_Objects", obj_encounter_3, {image_xscale : 1, image_yscale: 2})
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

if(global.day == 3 or global.day == 5){	
	instance_destroy()
		
} else {
	instance_create_layer(x, y, "Walls", obj_wall, {image_xscale: 1, image_yscale: 1})
		
}
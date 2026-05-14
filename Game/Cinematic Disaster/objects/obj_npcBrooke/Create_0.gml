if(global.day == 2 or global.day == 5){
	instance_destroy()	
		
} else {
	instance_create_layer(x, y, "Walls", obj_wall, {image_xscale: 1, image_yscale: 1.5})
		
}
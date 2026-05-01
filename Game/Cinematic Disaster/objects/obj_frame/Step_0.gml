if (distance_to_object(obj_roaming_player) <= 1) && (obj_roaming_player.active = true){
	camera_set_view_target(view_camera[0], id);
	view_set_wport(0,frame_width);
	view_set_hport(0,frame_height);
	camera_set_view_size(view_camera[0],frame_width,frame_height);
	camera_set_view_border(view_camera[0],frame_width/2,frame_height/2);
}
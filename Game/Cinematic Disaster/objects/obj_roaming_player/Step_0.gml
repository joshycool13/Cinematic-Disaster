
// movement

//take keyboard input
if (active) {
	key_up = keyboard_check(ord("W")); //the variable automatically stores a 0 or 1
	key_down = keyboard_check(ord("S"));
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
} else {
	key_up = 0; // ignore and freeze these inputs when player is not active
	key_down = 0; // i.e. in dialogue
	key_right = 0;
	key_left = 0;
}

//calculate movement speeds
horizontal_speed = key_right - key_left;
horizontal_speed *= walkspeed;

vertical_speed = key_down - key_up;
vertical_speed *= walkspeed;

//move the player
move_and_collide(0, vertical_speed, obj_wall, 16, 0, 0, walkspeed, walkspeed)
move_and_collide(horizontal_speed, 0, obj_wall, 16, 0, 0, walkspeed, walkspeed)

// sprites

// Is the player moving? -> Which way are they facing?
if (horizontal_speed == 0) and (vertical_speed == 0) {
	// not moving - maintain current direction
	if (horizontal_facing == -1) { // left
		image_xscale = -1;
		
		if (vertical_facing == -1) { // left up
			sprite_index = spr_roaming_player_idle_backside;
		} else if (vertical_facing == 0) { // left
			sprite_index = spr_roaming_player_idle_side;
		} else if (vertical_facing == 1) { // left down
			sprite_index = spr_roaming_player_idle_frontside;
		}
	} else if (horizontal_facing == 0) { // neutral
		image_xscale = 1;
		
		if (vertical_facing == -1) { // up
			sprite_index = spr_roaming_player_idle_back;
		} else if (vertical_facing == 0) { // neutral
			sprite_index = spr_roaming_player_idle_front;
		} else if (vertical_facing == 1) { // down
			sprite_index = spr_roaming_player_idle_front;
		}
	} else if (horizontal_facing == 1) { // right
		image_xscale = 1;
		
		if (vertical_facing == -1) { // right up
			sprite_index = spr_roaming_player_idle_backside;
		} else if (vertical_facing == 0) { // right
			sprite_index = spr_roaming_player_idle_side;
		} else if (vertical_facing == 1) { // right down
			sprite_index = spr_roaming_player_idle_frontside;
		}
	}
		
} else {
	// is moving
	if (horizontal_speed == 0) { // neutral
		horizontal_facing = 0;
		image_xscale = 1;
		
		if (vertical_speed > 0) { // down
			vertical_facing = 1;
			sprite_index = spr_roaming_player_walk_front;
			
		} else if (vertical_speed < 0) { // up
			vertical_facing = -1;
			sprite_index = spr_roaming_player_walk_back;
		}
		
	} else if (horizontal_speed < 0) { // left
		horizontal_facing = -1;
		image_xscale = -1;
		
		if (vertical_speed == 0) { // just left
			vertical_facing = 0;
			sprite_index = spr_roaming_player_walk_side;
			
		} else if (vertical_speed > 0) { // down left
			vertical_facing = 1;
			sprite_index = spr_roaming_player_walk_frontside;
			
		} else if (vertical_speed < 0) { // up left
			vertical_facing = -1;
			sprite_index = spr_roaming_player_walk_backside;
		}
		
	} else if (horizontal_speed > 0) { // right
		horizontal_facing = 1;
		image_xscale = 1;
		
		if (vertical_speed == 0) { // just right
			vertical_facing = 0;
			sprite_index = spr_roaming_player_walk_side;
			
		} else if (vertical_speed > 0) { // down right
			vertical_facing = 1;
			sprite_index = spr_roaming_player_walk_frontside;
			
		} else if (vertical_speed < 0) { // up right
			vertical_facing = -1;
			sprite_index = spr_roaming_player_walk_backside;
		}
	}
}


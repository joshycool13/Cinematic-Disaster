//constants
walkspeed = 5; // how fast the player moves


//movement var
horizontal_speed = 0; // current horizontal velocity
vertical_speed = 0; // current vertical velocity

key_right = 0; // store current key states
key_left = 0;
key_up = 0;
key_down = 0;

vertical_facing = 1; // -1 up, 0 neutral, 1 down
horizontal_facing = 0; // -1 left, 0 neutral, 1 down


//inventory var
money = global.player_money; 
hp = global.combat_player_hp;
tp = global.combat_player_tp;


//states var
active = false; // lock player movement when this is false
go_to_item_shop = false // make the camera look at the item shop when this is true
go_to_actor_shop = false //ditto for the actor shop
go_to_menu = true // start the game looking at the start menu
go_to_credits = false // look at credits screen
go_to_inventory = false // look at inventory
go_to_ending = false // look at ending screen



// don't go to to menu upon returning
if (array_length(global.combat_enemies) > 0) {
	go_to_menu = false
	active = true
}

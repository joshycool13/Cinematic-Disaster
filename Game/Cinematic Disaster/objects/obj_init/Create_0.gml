// Set global variables

global.combat_enemies = []


global.combat_player_employees = { // the number represents time remaining
	"castagent" : 0, 
	"janitor" : 0,
	"makeup" : 0, 
	"boomcrew" : 0, 
	"janewick" : 0
}
global.combat_player_attacks = []
global.combat_player_defends = []
global.combat_player_items = []

global.player_money = 1000

global.combat_player_hp = 20
global.combat_player_tp = 10

item_list = ["coffee", "drink", "flashbang", "linechange", "rag", "reel", "tomato"]
actor_list = ["castagent", "janitor", "makeup", "boomcrew", "janewick"]

// go to roaming room
room_goto(1)
// Set global variables
randomize()

global.day = 1
global.combat_enemies = []
global.combats_complete = [false, false, false]


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

global.player_money = 120

global.combat_player_hp = 20
global.combat_player_tp = 10

global.item_list = ["coffee", "drink", "flashbang", "linechange", "rag", "reel", "tomato"]
global.actor_list = ["castagent", "janitor", "makeup", "boomcrew", "janewick"]
array_shuffle_ext(global.item_list)
array_shuffle_ext(global.actor_list)

global.started_game = true

global.roaming_tutorial_played = false

global.current_music = noone

// go to roaming room
room_goto(1)
/// @description Insert description here
// You can write your code in this editor

layer_set_visible("RoamingUI", false)
layer_set_visible("TutorialRoaming", false)

global.combat_player_hp = 20
global.combat_player_tp = 10

// Enemies "rat", "dogcar", "shield", "thief_cat", "cyborg", "monkey"
global.combat_enemies = ["rat", "dogcar"]
global.combat_player_items = ["drink", "coffee", "rag", "linechange", "tomato", "flashbang"]
global.combat_player_attacks = ["identify", "broom", "flying_elbow", "gun", "disguise", "bomb"]
global.combat_player_defends = ["prediction", "cleanse", "protect", "imitate", "landmine", "blast_shield"]
	
room_goto_next()
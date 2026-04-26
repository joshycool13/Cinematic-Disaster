
if place_meeting(x, y, obj_roaming_player)
{
	layer_set_visible("RoamingUI", false)
	layer_set_visible("TutorialRoaming", false)
	
	
	// Enemies "rat", "dogcar", "shield", "thief_cat", "cyborg", "monkey"
	global.combat_enemies = ["monkey", "shield"]
	global.combat_player_items = ["corp_drink", "coffee", "rag", "line_change", "rotten_tomato", "flashbang"]
	global.combat_player_attacks = ["identify", "broom", "flying_elbow", "gun", "disguise", "bomb"]
	global.combat_player_defends = ["prediction", "cleanse", "protect", "imitate", "landmine", "blast_shield"]
	
	room_goto_next()
}

if place_meeting(x, y, obj_roaming_player)
{
	layer_set_visible("RoamingUI", false)
	layer_set_visible("TutorialRoaming", false)
	
	global.combat_enemies = ["rat", "dogcar"]
	global.combat_player_items = ["corp_drink", "rotten_tomato"]
	global.combat_player_attacks = ["identify"]
	global.combat_player_defends = ["prediction"]
	
	room_goto_next()
}
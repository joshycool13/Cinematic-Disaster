
if place_meeting(x, y, obj_roaming_player)
{
	layer_set_visible("RoamingUI", false)
	layer_set_visible("TutorialRoaming", false)
	
	global.combat_enemies = ["rat"]
	global.combat_player_items = ["corp_drink"]
	
	room_goto_next()
}
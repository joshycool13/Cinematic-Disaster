
if place_meeting(x, y, obj_temp2_player)
{
	layer_set_visible("RoamingUI", false)
	layer_set_visible("TutorialRoaming", false)
	
	global.combat_enemies = ["rat"]
	
	room_goto_next()
}
layer_set_visible("CombatVictory", false)
layer_set_visible("CombatGameOver", false)
layer_set_visible("CombatHP", false)

global.combat_player_hp = inst_player_id.health_num
global.combat_player_tp = inst_player_id.tp_num
global.combat_player_items = []
for (var i = 0; i < array_length(item_button_ids); i += 1) // put correct items
{
	global.combat_player_items[i] = item_button_ids[i].button_name
}

room_goto(1)
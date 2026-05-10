layer_set_visible("CombatVictory", false)
layer_set_visible("CombatGameOver", false)
layer_set_visible("CombatHP", false)

layer_set_visible("TutorialCombatAttack", false)
layer_set_visible("TutorialCombatDodge", false)
layer_set_visible("TutorialCombat_BG", false)
layer_set_visible("TutorialRoaming", true)
layer_set_visible("TutorialRoaming_BG", true)

global.combat_player_hp = inst_player_id.health_num
global.combat_player_tp = inst_player_id.tp_num
global.combat_player_items = []
for (var i = 0; i < array_length(item_button_ids); i += 1) // put correct items
{
	global.combat_player_items[i] = item_button_ids[i].button_name
}

// delete buttons after combat
for (var i = 0; i < array_length(attack_button_ids); i += 1)
{
	attack_button_ids[i].button_name = ""
}
for (var i = 0; i < array_length(defend_button_ids); i += 1)
{
	defend_button_ids[i].button_name = ""
}
for (var i = 0; i < array_length(item_button_ids); i += 1)
{
	item_button_ids[i].button_name = ""
}

audio_stop_sound(global.current_music)
global.current_music = audio_play_sound(roaming_music, 10, true)

room_goto(1)

use_item_temp = function()
{
	layer_set_visible("AttackMenu", false)
	layer_set_visible("PlayerTurn", true)
	alarm[0] = 120
}

hide_attack_menu = function()
{
	layer_set_visible("AttackMenu", false)
}

finish_attack = function()
{
	layer_set_visible("DefenseMenu", true)
}

start_player_defending = function()
{
	layer_set_visible("DefenseMenu", false)
	layer_set_visible("EnemyTurn", true)
	alarm[1] = 120
}
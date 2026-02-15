
start_player_attacking = function()
{
	layer_set_visible("AttackMenu", false)
	layer_set_visible("PlayerTurn", true)
	alarm[0] = 120
}

start_player_defending = function()
{
	layer_set_visible("DefenseMenu", false)
	layer_set_visible("EnemyTurn", true)
	alarm[1] = 120
}
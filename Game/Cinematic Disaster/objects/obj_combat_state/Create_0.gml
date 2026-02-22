
// Constants
player_x = 192
player_y = 384
enemy_x = 832
enemy_y = 416

// Variables
cur_attacked = false

// On Room Start
inst_player_id = instance_create_layer(player_x, player_y, "Instances", obj_combat_player)
inst_enemy_id = instance_create_layer(enemy_x, enemy_y, "Instances", obj_combat_enemy_rat)

layer_set_visible("RoamingUI", false)
layer_set_visible("AttackMenu", true)

// Functions
player_attack = function() // start player's attack
{
	layer_set_visible("AttackMenu", false)
	cur_attacked = inst_enemy_id
	inst_player_id.start_player_attack(inst_enemy_id)
}

finish_player_attack = function() // when player's attack is over
{
	layer_set_visible("DefenseMenu", true)
}

attacked_is_hit = function() // when something is hit
{
	cur_attacked.play_hit_anim()
}

use_item_temp = function() // pressing item button
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

// Constants
player_x = 192
player_y = 384
enemy_x = 832
enemy_y = 416
player_hp_text = layer_text_get_id("CombatHP", "player_hp")

// Variables
cur_attacked = false
player_hp = 20
enemy_hp = 20

// On Room Start
inst_player_id = instance_create_layer(player_x, player_y, "Instances", obj_combat_player)
inst_enemy_id = instance_create_layer(enemy_x, enemy_y, "Instances", obj_combat_enemy_rat)

layer_set_visible("CombatHP", true)
layer_set_visible("Clipboard", true)
layer_set_visible("PlayerMenu", true)

// Functions
attack_menu = function() // go to attack menu
{
	layer_set_visible("PlayerMenu", false)
	layer_set_visible("AttackMenu", true)
}

player_menu = function() // go to player menu
{
	layer_set_visible("AttackMenu", false)
	layer_set_visible("ItemMenu", false)
	layer_set_visible("PlayerMenu", true)
}

item_menu = function() // go to item menu
{
	layer_set_visible("PlayerMenu", false)
	layer_set_visible("ItemMenu", true)
}

defend_menu = function() // go to defend menu
{
	layer_set_visible("EnemyMenu", false)
	layer_set_visible("DefendMenu", true)
}

player_attack = function() // start player's attack
{
	layer_set_visible("AttackMenu", false)
	cur_attacked = inst_enemy_id
	inst_player_id.start_attack(inst_enemy_id)
}

finish_player_attack = function() // when player's attack is over
{
	if enemy_hp <= 0
	{
		layer_set_visible("CombatVictory", true)
		alarm[2] = 120
		return
	}
	layer_set_visible("DefenseMenu", true)
}

attacked_is_hit = function() // when something is hit
{
	cur_attacked.play_hit_anim()
	if cur_attacked == inst_player_id and inst_player_id.pressed_space == 0
	{
		player_hp -= 12
		layer_text_text(player_hp_text, "HP: " + string(player_hp))
	}
	if cur_attacked == inst_enemy_id
	{
		enemy_hp -= 4
		layer_text_text(enemy_hp_text, "HP: " + string(enemy_hp))
	}
}

use_item_temp = function() // pressing item button
{
	layer_set_visible("AttackMenu", false)
	layer_set_visible("PlayerTurn", true)
	alarm[0] = 120
}

player_defend = function()
{
	layer_set_visible("DefenseMenu", false)
	cur_attacked = inst_player_id
	inst_enemy_id.start_attack(inst_player_id)
}

finish_player_defend = function()
{
	if player_hp <= 0
	{
		layer_set_visible("CombatGameOver", true)
		alarm[2] = 120
		return
	}
	layer_set_visible("AttackMenu", true)
}

start_player_defending = function()
{
	layer_set_visible("DefenseMenu", false)
	layer_set_visible("EnemyTurn", true)
	alarm[1] = 120
}
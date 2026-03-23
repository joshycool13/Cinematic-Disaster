
// Constants
player_x = 192
player_y = 384
enemy_x = 832
enemy_y = 416
player_hp_text = layer_text_get_id("CombatHP", "player_hp")

// Variables
cur_attacked = false
player_hp = 20
enemy_hp = 6
is_player_turn = true

// On Room Start
inst_player_id = instance_create_layer(player_x, player_y, "Instances", obj_combat_player)
inst_enemy_id = instance_create_layer(enemy_x, enemy_y, "Instances", obj_combat_enemy_rat)

layer_set_visible("CombatHP", true)
layer_set_visible("Clipboard", true)
layer_set_visible("PlayerMenu", true)

layer_text_text(player_hp_text, "HP: " + string(player_hp))

// ---------- Functions ----------

// Clipboard Menus
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

enemy_menu = function() // go to enemy menu
{
	layer_set_visible("DefendMenu", false)
	layer_set_visible("EnemyMenu", true)
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

// Player Attacks
player_attack = function(attack_name) // start player's attack
{
	layer_set_visible("AttackMenu", false)
	layer_set_visible("Clipboard", false)
	cur_attacked = inst_enemy_id
	
	switch (attack_name)
	{
		case "default_attack":
			inst_player_id.start_attack(inst_enemy_id)
	}
}

finish_player_attack = function() // when player's attack is over
{
	if enemy_hp <= 0
	{
		layer_set_visible("CombatVictory", true)
		alarm[2] = 120
		return
	}
	layer_set_visible("Clipboard", true)
	layer_set_visible("EnemyMenu", true)
	is_player_turn = false
}

// Player Defend
player_defend = function(defend_name) // start player's defend
{
	layer_set_visible("DefendMenu", false)
	layer_set_visible("Clipboard", false)
	cur_attacked = inst_player_id
	
	switch (defend_name)
	{
		case "default_defend":
			inst_enemy_id.start_attack(inst_player_id)
	}
}

finish_player_defend = function() // when player's defend is over
{
	if player_hp <= 0
	{
		layer_set_visible("CombatGameOver", true)
		alarm[2] = 120
		return
	}
	layer_set_visible("Clipboard", true)
	layer_set_visible("PlayerMenu", true)
	is_player_turn = true
}

// Player Item
use_item_temp = function() // pressing item button
{
	layer_set_visible("AttackMenu", false)
	layer_set_visible("PlayerTurn", true)
	alarm[0] = 120
}

// Misc Functions
attacked_is_hit = function() // when something is hit
{
	cur_attacked.play_hit_anim()
	if cur_attacked == inst_player_id and inst_player_id.pressed_space == 0
	{
		player_hp -= 4
		layer_text_text(player_hp_text, "HP: " + string(player_hp))
	}
	if cur_attacked == inst_enemy_id
	{
		enemy_hp -= 4
	}
}
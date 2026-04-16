
// Constants
player_x = 192
player_y = 448
enemy_x = [800, 672, 928]
enemy_y = 448
player_hp_text = layer_text_get_id("CombatHP", "player_hp_num")
player_tp_text = layer_text_get_id("CombatHP", "player_tp_num")
attack_button_ids = [attack_button2, attack_button3, attack_button4, attack_button5, attack_button6, attack_button7, attack_button8, attack_button9]
defend_button_ids = [defend_button2, defend_button3, defend_button4, defend_button5, defend_button6, defend_button7, defend_button8, defend_button9]
item_button_ids = [item_button1, item_button2, item_button3, item_button4, item_button5, item_button6, item_button7, item_button8, item_button9]

// Variables
is_player_turn = true
player_attack_name = ""
inst_selector_id = []
temp_inst_button_id = noone
player_tp_cost = 0
current_enemy_attacking = 0

// On Room Start
for (var i = 0; i < array_length(global.combat_enemies); i += 1) // spawn in each enemy
{
	switch global.combat_enemies[i]
	{
		case "rat":
			inst_enemy_id[i] = instance_create_layer(enemy_x[i], enemy_y, "Instances", obj_combat_enemy_rat)
		break;
		
		case "dogcar":
			inst_enemy_id[i] = instance_create_layer(enemy_x[i], enemy_y, "Instances", obj_combat_enemy_dogcar)
		break;
	}
}

for (var i = 0; i < array_length(global.combat_player_attacks); i += 1) // put correct attacks as options
{
	attack_button_ids[i].button_name = global.combat_player_attacks[i]
}

for (var i = 0; i < array_length(global.combat_player_defends); i += 1) // put correct defends as options
{
	defend_button_ids[i].button_name = global.combat_player_defends[i]
}

for (var i = 0; i < array_length(global.combat_player_items); i += 1) // put correct items
{
	item_button_ids[i].button_name = global.combat_player_items[i]
}

inst_player_id = instance_create_layer(player_x, player_y, "Instances", obj_combat_player)

layer_set_visible("CombatHP", true)
layer_set_visible("Clipboard", true)
layer_set_visible("PlayerMenu", true)

inst_player_id.health_num = global.combat_player_hp
inst_player_id.tp_num = global.combat_player_tp
layer_text_text(player_hp_text, string(inst_player_id.health_num))
layer_text_text(player_tp_text, string(inst_player_id.tp_num))

// ---------- Functions ----------

// Clipboard Menus
attack_menu = function() // go to attack menu
{
	layer_set_visible("PlayerMenu", false)
	layer_set_visible("AttackMenu", true)
}

player_menu = function() // go to player menu
{
	layer_set_visible("Clipboard", true)
	layer_set_visible("AttackMenu", false)
	layer_set_visible("ItemMenu", false)
	layer_set_visible("PlayerMenu", true)
	layer_set_visible("SelectMenu", false)
	
	remove_selectors()
	temp_inst_button_id = noone
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

select_menu = function(button_name, tp_cost, item_button_id = noone) // go to select menu
{
	player_attack_name = button_name
	temp_inst_button_id = item_button_id
	player_tp_cost = tp_cost
	
	layer_set_visible("AttackMenu", false)
	layer_set_visible("ItemMenu", false)
	layer_set_visible("Clipboard", false)
	layer_set_visible("SelectMenu", true)
	
	for (var i = 0; i < array_length(inst_enemy_id); i += 1)
	{
		if (instance_exists(inst_enemy_id[i]))
		{
			inst_selector_id[i] = instance_create_layer(inst_enemy_id[i].x, inst_enemy_id[i].y, "Selectors", obj_selector)
			inst_selector_id[i].button_number = i
		}
	}
}

remove_selectors = function() // remove selectors
{
	for (var i = 0; i < array_length(inst_selector_id); i += 1)
	{
		instance_destroy(inst_selector_id[i])
	}
}

// Player Attacks
player_attack = function(attack_name, tp_cost, target) // start player's attack
{	
	if inst_player_id.tp_num - tp_cost < 0
	{
		player_menu()
		return
	}
	
	layer_set_visible("AttackMenu", false)
	layer_set_visible("Clipboard", false)
	layer_set_visible("SelectMenu", false)
	remove_selectors()
	
	inst_player_id.start_attack(inst_enemy_id[target], attack_name, tp_cost)
	
	//switch (player_attack_name)
	//{
		//case "default_attack":
			//inst_player_id.start_attack(inst_enemy_id[target], attack_name, tp_cost)
		//break;
		
		//case "identify":
			//inst_player_id.start_attack(inst_enemy_id[target], attack_name, tp_cost)
		//break
	//}
	
	update_hud_text()
}

finish_player_attack = function() // when player's attack is over
{
	var is_there_enemies = false
	
	// delete enemies when 
	for (var i = 0; i < array_length(inst_enemy_id); i += 1)
	{
		if instance_exists(inst_enemy_id[i])
		{
			if inst_enemy_id[i].health_num <= 0
			{
				instance_create_layer(inst_enemy_id[i].x, inst_enemy_id[i].y, "Smoke", obj_combat_smokepuff)
				inst_enemy_id[i].alarm[0] = 15
			}
			else
			{
				is_there_enemies = true
			}
		}
	}
	
	if is_there_enemies == false
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
player_defend = function(defend_name, tp_gain) // start player's defend
{
	layer_set_visible("DefendMenu", false)
	layer_set_visible("Clipboard", false)
	
	inst_player_id.start_defend(defend_name, tp_gain)
	
	update_hud_text()
}

enemy_attack = function() // start enemy attacks
{
	if current_enemy_attacking >= array_length(inst_enemy_id)
	{
		current_enemy_attacking = 0
		finish_player_defend()
		return
	}
	
	if (instance_exists(inst_enemy_id[current_enemy_attacking]))
	{
		inst_enemy_id[current_enemy_attacking].start_attack(inst_player_id)
	}
	else
	{
		current_enemy_attacking += 1
		enemy_attack()
		return
	}
	
	current_enemy_attacking += 1
}

finish_player_defend = function() // when player's defend is over
{
	if check_if_player_dead()
	{
		return
	}
	layer_set_visible("Clipboard", true)
	layer_set_visible("PlayerMenu", true)
	is_player_turn = true
}

check_if_player_dead = function() // end game if player dead
{
	if inst_player_id.health_num <= 0
	{
		layer_set_visible("CombatGameOver", true)
		alarm[2] = 120
		return true
	}
	return false
}

// Player Item
player_item = function(item_name, target) // pressing item button
{
	layer_set_visible("ItemMenu", false)
	layer_set_visible("Clipboard", false)
	remove_selectors()
	
	reorganize_item_list()
	
	inst_player_id.use_item(inst_enemy_id[target], item_name)
}

finish_player_item = function() // when player's item is over
{
	update_hud_text()
	
	layer_set_visible("Clipboard", true)
	layer_set_visible("EnemyMenu", true)
	is_player_turn = false
}

reorganize_item_list = function() // moves up any items when an item button is pressed
{
	for (var i = 0; i < array_length(item_button_ids); i += 1)
	{
		if item_button_ids[i].button_name == ""
		{
			for (var j = i+1; j < array_length(item_button_ids); j += 1)
			{
				item_button_ids[j-1].button_name = item_button_ids[j].button_name
				item_button_ids[j].button_name = ""
			}
			return
		}
	}
}

// Misc Functions
finished_selector = function(target)
{
	if (temp_inst_button_id)
	{
		var temp_item_button_name = temp_inst_button_id.button_name
		temp_inst_button_id.button_name = ""
		player_item(temp_item_button_name, target)
	}
	else
	{
		player_attack(player_attack_name, player_tp_cost, target)
	}
}

attacked_is_hit = function(cur_attacked, damage, is_aoe, status_effect = "") // when something is hit
{	
	if is_aoe
	{
		for (var i = 0; i < array_length(inst_enemy_id); i += 1)
		{
			if instance_exists(inst_enemy_id[i])
			{
				inst_enemy_id.get_hit(damage, status_effect)
			}
		}
	}
	else
	{
		cur_attacked.get_hit(damage, status_effect)
	}
	
	update_hud_text()
}

update_hud_text = function() // updated hud numbers
{
	layer_text_text(player_hp_text, string(inst_player_id.health_num))
	layer_text_text(player_tp_text, string(inst_player_id.tp_num))
}

// Constants
player_x = 192
player_y = 448
enemy_x = [800, 672, 928]
enemy_y = 448
player_hp_text = layer_text_get_id("CombatHP", "player_hp_num")
attack_button_ids = [attack_button2, attack_button3, attack_button4, attack_button5, attack_button6, attack_button7, attack_button8, attack_button9]
defend_button_ids = [defend_button2, defend_button3, defend_button4, defend_button5, defend_button6, defend_button7, defend_button8, defend_button9]
item_button_ids = [item_button1, item_button2, item_button3, item_button4, item_button5, item_button6, item_button7, item_button8, item_button9]

// Variables
is_player_turn = true
player_attack_name = ""
inst_selector_id = []
temp_inst_button_id = noone

// On Room Start
for (var i = 0; i < array_length(global.combat_enemies); i += 1) // spawn in each enemy
{
	switch global.combat_enemies[i]
	{
		case "rat":
			inst_enemy_id[0] = instance_create_layer(enemy_x[i], enemy_y, "Instances", obj_combat_enemy_rat)
		break;
	}
}

for (var i = 0; i < array_length(global.combat_player_attacks); i += 1) // put correct attacks as options
{
	switch global.combat_attacks[i]
	{
		case "identify":
			attack_button_ids[i].button_name = "identify"
		break;
	}
}

for (var i = 0; i < array_length(global.combat_player_defends); i += 1) // put correct defends as options
{
	show_debug_message("defend")
}

for (var i = 0; i < array_length(global.combat_player_items); i += 1) // put correct items
{
	switch global.combat_player_items[i]
	{
		case "corp_drink":
			item_button_ids[i].button_name = "corp_drink"
		break;
		
		case "rotten_tomato":
			item_button_ids[i].button_name = "rotten_tomato"
		break;
	}
}

inst_player_id = instance_create_layer(player_x, player_y, "Instances", obj_combat_player)

layer_set_visible("CombatHP", true)
layer_set_visible("Clipboard", true)
layer_set_visible("PlayerMenu", true)

inst_player_id.health_num = global.combat_player_hp
layer_text_text(player_hp_text, string(inst_player_id.health_num))

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

select_menu = function(button_name, item_button_id = noone) // go to select menu
{
	player_attack_name = button_name
	temp_inst_button_id = item_button_id
	
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
player_attack = function(target) // start player's attack
{
	if (temp_inst_button_id) {
		var temp_item_button_name = temp_inst_button_id.button_name
		temp_inst_button_id.button_name = ""
		player_item(temp_item_button_name)
	}
	
	layer_set_visible("AttackMenu", false)
	layer_set_visible("Clipboard", false)
	layer_set_visible("SelectMenu", false)
	remove_selectors()
	
	switch (player_attack_name)
	{
		case "default_attack":
			inst_player_id.start_attack(inst_enemy_id[target], player_attack_name)
	}
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
player_defend = function(defend_name) // start player's defend
{
	layer_set_visible("DefendMenu", false)
	layer_set_visible("Clipboard", false)
	
	inst_player_id.start_defend(defend_name)
}

enemy_attack = function() // start enemy attacks
{
	inst_enemy_id[0].start_attack(inst_player_id)
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
player_item = function(item_name) // pressing item button
{
	layer_set_visible("ItemMenu", false)
	layer_set_visible("Clipboard", false)
	remove_selectors()
	
	reorganize_item_list()
	
	inst_player_id.use_item(item_name)
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
attacked_is_hit = function(cur_attacked, damage, is_aoe) // when something is hit
{	
	if is_aoe
	{
		for (var i = 0; i < array_length(inst_enemy_id); i += 1)
		{
			if instance_exists(inst_enemy_id[i])
			{
				inst_enemy_id.get_hit(damage)
			}
		}
	}
	else
	{
		cur_attacked.get_hit(damage)
	}
	
	update_hud_text()
}

update_hud_text = function() // updated hud numbers
{
	layer_text_text(player_hp_text, string(inst_player_id.health_num))
}
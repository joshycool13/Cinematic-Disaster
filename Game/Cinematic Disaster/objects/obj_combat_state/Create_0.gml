
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
current_item_deleted = noone
current_attack_names = []
current_defend_names = []
player_deafened = false

// Global cause I'm tired
global.status_effect_x = 16
global.status_effect_y = [-128, -160, -192]

// On Room Start
audio_stop_sound(global.current_music)
global.current_music = audio_play_sound(combat_music_2_trim, 10, true)

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
		
		case "shield":
			inst_enemy_id[i] = instance_create_layer(enemy_x[i], enemy_y, "Instances", obj_combat_enemy_shield)
		break;
		
		case "cyborg":
			inst_enemy_id[i] = instance_create_layer(enemy_x[i], enemy_y, "Instances", obj_combat_enemy_cyborg)
		break;
		
		case "thief_cat":
			inst_enemy_id[i] = instance_create_layer(enemy_x[i], enemy_y, "Instances", obj_combat_enemy_cat)
		break;
		
		case "monkey":
			inst_enemy_id[i] = instance_create_layer(enemy_x[i], enemy_y, "Instances", obj_combat_enemy_monkey)
		break;
	}
}

for (var i = 0; i < array_length(global.combat_player_attacks); i += 1) // put correct attacks as options
{
	attack_button_ids[i].button_name = global.combat_player_attacks[i]
	current_attack_names[i] = global.combat_player_attacks[i]
}

for (var i = 0; i < array_length(global.combat_player_defends); i += 1) // put correct defends as options
{
	defend_button_ids[i].button_name = global.combat_player_defends[i]
	current_defend_names[i] = global.combat_player_defends[i]
}

for (var i = 0; i < array_length(global.combat_player_items); i += 1) // put correct items
{
	item_button_ids[i].button_name = global.combat_player_items[i]
}

inst_player_id = instance_create_layer(player_x, player_y, "Instances", obj_combat_player)

layer_set_visible("TutorialCombatAttack", true)
layer_set_visible("TutorialCombat_BG", true)
layer_set_visible("TutorialRoaming", false)
layer_set_visible("TutorialRoaming_BG", false)

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
	layer_set_visible("SelectMenu", false)
}

// Player Attacks
player_attack = function(attack_name, tp_cost, target) // start player's attack
{	
	if temp_inst_button_id != noone
	{
		player_item(attack_name, target)
		return
	}
	
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
			inst_enemy_id[i].take_poison_damage()
			
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
		audio_stop_sound(global.current_music)
		global.current_music = audio_play_sound(victory_sound, 10, false)
		return
	}
	layer_set_visible("Clipboard", true)
	layer_set_visible("EnemyMenu", true)
	layer_set_visible("TutorialCombatAttack", false)
	layer_set_visible("TutorialCombatDodge", true)
	is_player_turn = false
}

// Player Defend
player_defend = function(defend_name, tp_gain) // start player's defend
{
	layer_set_visible("DefendMenu", false)
	layer_set_visible("Clipboard", false)
	
	// bring back attacks and defends if deafened
	if player_deafened
	{
		player_deafened = false
		
		inst_player_id.remove_status_effect(inst_player_id.inst_status_deafen)
		if instance_exists(inst_player_id.inst_status_deafen)
		{
			instance_destroy(inst_player_id.inst_status_deafen)
		}
		
		for (var i = 0; i < array_length(current_attack_names); i += 1)
		{
			attack_button_ids[i].button_name = current_attack_names[i]
		}
		for (var i = 0; i < array_length(current_defend_names); i += 1)
		{
			defend_button_ids[i].button_name = current_defend_names[i]
		}
	}
	
	inst_player_id.start_defend(defend_name, tp_gain)
	
	update_hud_text()
}

enemy_attack = function() // start enemy attacks
{
	obj_tutorialtext.tutorial_text = "Press right before the attacks hit you."
	obj_tutorialtext.is_visible = true
	
	if current_enemy_attacking >= array_length(inst_enemy_id)
	{
		current_enemy_attacking = 0
		finish_player_defend()
		return
	}
	
	current_enemy_attacking += 1
	
	if (instance_exists(inst_enemy_id[current_enemy_attacking-1]))
	{
		inst_enemy_id[current_enemy_attacking-1].start_attack(inst_player_id)
	}
	else
	{
		enemy_attack()
		return
	}
}

finish_player_defend = function() // when player's defend is over
{
	obj_tutorialtext.is_visible = false
	inst_player_id.take_poison_damage()
	inst_player_id.clear_bucket()
	inst_player_id.kill_janewick()
	update_hud_text()
	
	if check_if_player_dead()
	{
		return
	}
	
	// in case enemies die from landmine
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
		audio_stop_sound(global.current_music)
		global.current_music = audio_play_sound(victory_sound, 10, false)
		return
	}
	
	layer_set_visible("Clipboard", true)
	layer_set_visible("TutorialCombatAttack", true)
	layer_set_visible("TutorialCombatDodge", false)
	if inst_player_id.is_stunned
	{
		inst_player_id.is_stunned = false
		inst_player_id.remove_status_effect(inst_player_id.inst_status_stun)
		if instance_exists(inst_player_id.inst_status_stun)
		{
			instance_destroy(inst_player_id.inst_status_stun)
		}
		finish_player_attack()
	}
	else
	{
		layer_set_visible("PlayerMenu", true)
		is_player_turn = true
	}
	
}

check_if_player_dead = function() // end game if player dead
{
	if inst_player_id.health_num <= 0
	{
		layer_set_visible("CombatGameOver", true)
		alarm[2] = 120
		audio_stop_sound(global.current_music)
		global.current_music = audio_play_sound(game_over_sound, 10, false)
		return true
	}
	return false
}

// Player Item
player_item = function(item_name, target) // pressing item button
{
	temp_inst_button_id = noone
	
	layer_set_visible("ItemMenu", false)
	layer_set_visible("Clipboard", false)
	remove_selectors()
	
	reorganize_item_list()
	
	inst_player_id.use_item(inst_enemy_id[target], item_name)
}

finish_player_item = function() // when player's item is over
{
	for (var i = 0; i < array_length(inst_enemy_id); i += 1)
	{
		if instance_exists(inst_enemy_id[i])
		{
			inst_enemy_id[i].take_poison_damage()
		}
	}
	
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
				inst_enemy_id[i].get_hit(damage, status_effect)
			}
		}
	}
	else
	{
		cur_attacked.get_hit(damage, status_effect)
	}
	
	update_hud_text()
}

attacked_is_hit_random = function(damage)
{	
	var attacked = irandom(array_length(inst_enemy_id)-1)
	
	if instance_exists(inst_enemy_id[attacked])
	{
		inst_enemy_id[attacked].get_hit(damage,"")
	}
	else
	{
		attacked_is_hit_random(damage)
	}
}

update_hud_text = function() // updated hud numbers
{
	layer_text_text(player_hp_text, string(inst_player_id.health_num))
	layer_text_text(player_tp_text, string(inst_player_id.tp_num))
}

lose_item = function()
{
	var item_amount = 0
	var item_number = 0
	var item_id = noone
	var item_name = ""
	
	for (var i = 0; i < array_length(item_button_ids); i += 1)
	{
		item_amount = i
		if item_button_ids[i].button_name == ""
		{
			item_amount = i-1
			break;
		}
	}
	
	if item_amount == -1
	{
		return;
	}
	else
	{
		item_number = irandom(item_amount)
		item_id = item_button_ids[item_number]
		item_name = item_id.button_name
	}
	
	item_id.button_name = ""
	
	switch item_name
	{
		case "drink":
			current_item_deleted = instance_create_layer(inst_player_id.x, inst_player_id.y - 145, "Items", obj_item_corporate_drink)
		break;
		
		case "coffee":
			current_item_deleted = instance_create_layer(inst_player_id.x, inst_player_id.y - 145, "Items", obj_item_coffee)
		break;
		
		case "rag":
			current_item_deleted = instance_create_layer(inst_player_id.x, inst_player_id.y - 145, "Items", obj_item_rag)
		break;
		
		case "linechange":
			current_item_deleted = instance_create_layer(inst_player_id.x, inst_player_id.y - 145, "Items", obj_item_line_change)
		break;
		
		case "tomato":
			current_item_deleted = instance_create_layer(inst_player_id.x, inst_player_id.y - 145, "Items", obj_item_rotten_tomato)
		break;
		
		case "flashbang":
			current_item_deleted = instance_create_layer(inst_player_id.x, inst_player_id.y - 145, "Items", obj_item_flashbang)
		break;
	}
	
	reorganize_item_list()
	alarm[3] = 60
}

gain_item = function(item, enemy_cat)
{
	var item_number = 0
	var has_item_slot_open = false
	
	for (var i = 0; i < array_length(item_button_ids); i += 1)
	{
		if item_button_ids[i].button_name == ""
		{
			item_number = i
			has_item_slot_open = true
			break;
		}
	}
	
	if not has_item_slot_open
	{
		return;
	}
	
	switch item
	{
		case "drink":
			current_item_deleted = instance_create_layer(enemy_cat.x, enemy_cat.y - 145, "Items", obj_item_corporate_drink)
		break;
		
		case "coffee":
			current_item_deleted = instance_create_layer(enemy_cat.x, enemy_cat.y - 145, "Items", obj_item_coffee)
		break;
		
		case "rag":
			current_item_deleted = instance_create_layer(enemy_cat.x, enemy_cat.y - 145, "Items", obj_item_rag)
		break;
		
		case "linechange":
			current_item_deleted = instance_create_layer(enemy_cat.x, enemy_cat.y - 145, "Items", obj_item_line_change)
		break;
		
		case "tomato":
			current_item_deleted = instance_create_layer(enemy_cat.x, enemy_cat.y - 145, "Items", obj_item_rotten_tomato)
		break;
		
		case "flashbang":
			current_item_deleted = instance_create_layer(enemy_cat.x, enemy_cat.y - 145, "Items", obj_item_flashbang)
		break;
	}
	
	item_button_ids[item_number].button_name = item
	reorganize_item_list()
	alarm[3] = 60
}

deafen_player = function()
{
	player_deafened = true
		
	for (var i = 0; i < array_length(current_attack_names); i += 1)
	{
		attack_button_ids[i].button_name = ""
	}
	for (var i = 0; i < array_length(current_defend_names); i += 1)
	{
		defend_button_ids[i].button_name = ""
	}
}
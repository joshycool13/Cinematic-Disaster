// removes the blank items when returning from combat.

for (i = array_length(global.combat_player_items) -1; i > -1 ; --i) {
	if (global.combat_player_items[i] == "") {
		array_delete(global.combat_player_items, i, 1);
	}
}
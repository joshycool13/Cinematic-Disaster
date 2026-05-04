
function remove_reels() {
	for (i = array_length(global.combat_player_items) -1; i > -1 ; --i) {
		if (global.combat_player_items[i] == "reel") {
			array_delete(global.combat_player_items, i, 1);
			global.player_money += irandom_range(70,110);
		}
	}
}
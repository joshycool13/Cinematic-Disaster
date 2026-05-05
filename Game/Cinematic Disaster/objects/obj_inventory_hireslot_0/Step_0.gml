

// figure out which one is this slot's held item
// iterate through the whole struct
// select the first one that has a duration above 0.
// skip one for each slot_number: second slot skips 1, third slot skips 2, so on.

//make an array of the keys
var hires = variable_struct_get_names(global.combat_player_employees)
var list_of_owned = []

for (var i = 0; i <= array_length(hires)-1; i++) {
	if (global.combat_player_employees[$ hires[i]] > 0) {
		array_push(list_of_owned, hires[i])
	} 
}

if (array_length(list_of_owned) >= slot_number + 1) {
	held = list_of_owned[slot_number]
}



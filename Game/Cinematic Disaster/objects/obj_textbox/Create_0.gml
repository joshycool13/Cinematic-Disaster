
// --- Properties ---
confirm_key = vk_space;

// Position
margin = 16;
padding = 8;
width = display_get_gui_width() - margin * 2;
height = sprite_height*8;
x = (display_get_gui_width() - width) / 2; // Centered calculation

// Text
txt_font = Font1;
text_color = c_white;
text_speed = 0.6;
text_x = padding;
text_y = padding;
text_width = width - padding * 2;

// Private Properties
actions = [];
current_action = -1;
text = "";
text_progress = 0;
text_length = 0;

// --- Methods ---

// 1. Define setText 
setText = function(newText) {
    text = newText;
    text_length = string_length(newText);
    text_progress = 0;
}; 

// 2. Define next 
next = function() {
    current_action++;
    if (current_action >= array_length(actions)) {
		obj_roaming_player.active = true
        instance_destroy();
    } else {
        actions[current_action].act(id);
		obj_roaming_player.active = false
    }
};

// 3. Define setTopic
setTopic = function(topic, npcCharacter = "") {
	character = npcCharacter
	actions = global.topics[$ topic];
    current_action = -1;
    next();
};
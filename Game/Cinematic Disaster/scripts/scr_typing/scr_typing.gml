//You must call this.
//Creates and starts a conversation.
//param topic= what topic the dialogue box should use.

function startDialogue(topic, character = "") {
	if(instance_exists(obj_textbox))
	return;
	
	var inst = instance_create_depth(x,y, -999, obj_textbox);
	inst.setTopic(topic, character);
}


function type(x,y,text,progress,width){
	var draw_x = 0;
	var draw_y = 0;
	
	for (var i = 1; i <= progress; i++) {
		var char = string_char_at(text, i);
		
		//handle normal line breaks
		if (char == "\n") {
			draw_x = 0;
			draw_y += string_height("A");
		}
		
		//On start new word, line break
		else if(char == " ") {
			draw_x += string_width(char);
			
			var word_width = 0;
			for(var ii = i + 1; ii <= string_length(text); ii++) {
				var word_char = string_char_at(text,ii);
				
		//Reached end? Stop Checking
		if(word_char == "\n" || word_char == " ")
		break;
		
		//if current word extends past width, move to next line
		word_width += string_width(word_char);
		if(draw_x + word_width > width) {
			draw_x=0;
			draw_y += string_height("A");
			break;
		 }
	  }
	}
	else{
		//Draw letter
		draw_text(x + draw_x, y + draw_y, char);
		draw_x += string_width(char);
		
	}
				
	}		

}
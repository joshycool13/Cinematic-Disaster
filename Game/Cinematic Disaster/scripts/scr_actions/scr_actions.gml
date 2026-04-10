#macro TEXT new TextAction

function DialogueAction() constructor{
	

	
	
	act = function() { };

}

//Define new text to type.
function TextAction(_text) : DialogueAction () constructor {
	
	saved_text = _text;
	act = function(textbox) {
		textbox.setText(saved_text);
	}
}
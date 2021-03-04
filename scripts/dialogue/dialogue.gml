/// @function dialogue_enter(_array, _portrait)
/// @description enters the dialogue state.
/// @param _array the dialogue array.
/// @param _portrait the portrait that the dialogue screen will display.
function dialogue_enter(_array, _portrait)
{
	global.dialogueArray = _array;
	global.dialoguePortrait = _portrait;
	pause_enter(DIALOGUE_ROOM);
}


/// @function dialogue_menu_create(_array)
/// @description initializes dialogue menu variables.
/// @param _dialogueArray
function dialogue_menu_create(_dialogueArray, _portrait)
{
	dialogueArray = _dialogueArray;
	index = 0;
	dialogue_check_line();
	portrait = _portrait;
}

/// @function dialogue_check_line()
/// @description Checks the given line of dialogue. Perfoms actions based on that. Recurses for some items.
function dialogue_check_line()
{
	
	//At the end exits dialogue.
	if (index >= array_length(dialogueArray))
	{
		global.dialogueArray = noone;
		pause_exit();
		return;
	}
	
	
	if (string_char_at(dialogueArray[index], 0) == "%")
	{
		dialogue_check_prefix(dialogueArray[index])
	}
	else
	{
		text = dialogueArray[index]
	}
}


/// @function dialogue_reverse()
/// @description Reverses the dialogue.
function dialogue_reverse()
{
	//If index is at 0 does nothing.
	if (index <= 0)
	{
		index = 0;
		return;
	}
	
	//Goes back 1 in the index.
	index--;
	
	//If it's a function skips it.
	if (string_char_at(dialogueArray[index], 0) == "%")
	{
		dialogue_reverse();
	}
	else
	{
		text = dialogueArray[index]
	}
	
	
}

///@function dialogue_check_prefix(_string)
///@description Finds the prefix in the string (between the '%' sign and first ' ') then calls another function.
function dialogue_check_prefix(_string)
{
	//Gets the prefix.
	var _prefix = string_copy(_string, 2, string_pos(" ", _string) - 2);
	
	
	switch (_prefix) 
	{
	    case "PORTRAIT":
			dialogue_prefix_portrait(_string);
	        break;
	    case "ROOM":
			dialogue_prefix_room(_string);
	        break;
	    case "CHOICE":
			dialogue_prefix_choice(_string);
	        break;
	    default:
			//Just goes to next line for now.
			index++;
			dialogue_check_line()
	        break;
	}
}

///@function dialogue_prefix_portrait(_string)
///@description delimits a string from dialogue referencing a sprite to be put in a portrait, sets the portrait as that sprite.
///@param _string The string to get the data from. Format: %PORTRAIT <sprite resource name>
function dialogue_prefix_portrait(_string)
{
			var _spriteNameLength =  string_length(_string) - string_pos(" ", _string);
			var _spriteName = string_copy(_string,  string_pos(" ", _string) + 1, _spriteNameLength);
	
			portrait = asset_get_index(_spriteName);
			
			
			//Goes to next line.
			index++;
			dialogue_check_line()
}

///@function dialogue_prefix_room(_string)
///@description Delimits a string from dialogue referencing a room and coordinates to place the player at in that room.
///@param _string The string to get the data from. Format: %ROOM <x coordinate of player spawn> <y coordinate of player spawn> <room resource name>
function dialogue_prefix_room(_string)
{
	//Removes the prefix from the string.
	_string = string_delete(_string, 1,  string_pos(" ", _string));
	
	
	//Sets the last room as not persistent.
	room_set_persistent(global.lastRoom, false);
	
	//Copies values from the string.
	var _xTo = real(string_copy(_string, 1,  string_pos(" ", _string)));
	_string = string_delete(_string, 1,  string_pos(" ", _string));
	var _yTo = real(string_copy(_string, 1,  string_pos(" ", _string)));
	var _roomTo = string_delete(_string, 1,  string_pos(" ", _string));
	
	//Gets room asset from string.
	_roomTo = asset_get_index(_roomTo);
	
	//Transition to new room.
	transition_board(_xTo, _yTo, _roomTo);
	
}

///@function dialogue_prefix_choice(_string)
///@description Delimits a string from dialogue with information used to make a dialogue choice object. This object will have additional dialogue commands, and the one the player selects will feed that command back into the main dialogue object.
///@param _string The string to get the data from. Format: %CHOICE [<Choice 1 Name> <Dialogue String 1>][<Choice 2 Name> <Dialogue String 2>]...[<Choice n Name> <Dialogue String n>]
function dialogue_prefix_choice(_string)
{
	//Creates the dialogue choice menu.
	var _menuObject = instance_create_depth(x, y, depth, obj_dialogueChoiceMenu);
	
	var _menuArray = array_create(0, 0);
	
	//Gives it an array of dialogue choice.
	with (_menuObject)
	{
		menu_create(_menuArray);
	}
}

/// @function dialogue_choice(_title, _string) constructor 
/// @description Constructor for dialogue choice struct.
/// @param _title title for the dialogue struct. What the player sees the menu option labelled as.
/// @param _string Dialogue string fed back into the dialogue menu object. What the dialogue menu actually does when the option is selected.
function dialogue_choice(_title, _string) constructor 
{
	title = _title;
	string = _string;
}

/// @function dialogue_menu_draw_gui()
/// @description Draws text for the dialogue menu object 
function dialogue_menu_draw_gui()
{
	//Draw textbox.
	draw_roundrect_color(0, (room_height * 0.75) - 5, room_width, room_height - 10, c_white, c_white, false);

	//Draw text.
	var _stringHeight = string_height(text);
	var _margin = 10;
	var _portraitWidth = sprite_get_width(portrait);
	var _portraitHeight = sprite_get_height(portrait);
	var _fullText = text;
	
	/*
	if ((index + 1) == array_length(dialogueArray))
	{
		_fullText = text + " (" + string(index + 1) + "/" + string(array_length(dialogueArray)) + ")";
	}
	else
	{
		_fullText = text + "...(" + string(index + 1) + "/" + string(array_length(dialogueArray)) + ")";
	}
	*/
	draw_text_ext_color((_margin * 2) +  _portraitWidth, room_height * 0.75, _fullText, _stringHeight, room_width - (_margin * 4) - _portraitWidth, c_black, c_black, c_black, c_black, 1);

	//Draw portrait.
	draw_sprite(portrait, 10, _margin, (room_height * 0.75) + _margin);
}
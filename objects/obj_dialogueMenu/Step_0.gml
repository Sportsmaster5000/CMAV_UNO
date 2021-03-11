/// @description Listens for player controls, processes array contents.

//If there is a dialogue choice active waits till the player inputs a choice.
if (array_length(options) == 0)
{
	dialogue_menu_step();
}
else
{
	menu_step();
	
	if (CONTINUE_BUTTON_RELEASED)
	{
		index = options[optionSelected].index;
		
		//Resets the menu variables.
		options = array_create(0, 0);
		menu_create(options);
		dialogue_check_line();
	}
}
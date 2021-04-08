/// @Goes back to game if pause button is pressed again.
if (START_BUTTON_RELEASED)
{	
	pause_exit();	
}

//Cycles through menu states.
global.phoneMenuState += (LEFT_BUTTON_RELEASED - RIGHT_BUTTON_RELEASED);

global.phoneMenuState = (global.phoneMenuState + 2) % 2;
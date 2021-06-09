function ps_initialize_globals() 
{
	//ps_initialize_globals()
	///Initializes the game's global variables.

	global.ps_maxHP = 100; //The highest possible value for ps_hp.
	global.ps_hp = 100;    //The player's current ps_hp.

	//Initializing keyboard controls.
	global.ps_rightKeyVal[0] = 39;  //Right arrow key
	global.ps_downKeyVal[0] = 40;   //Down arrow key
	global.ps_leftKeyVal[0] = 37;   //Left arrow key
	global.ps_upKeyVal[0] = 38;     //Up arrow key
	global.ps_bKeyVal[0] = 88;      //X key
	global.ps_aKeyVal[0] = 90;      //Z key
	global.ps_xKeyVal[0] = 67;      //C key
	global.ps_yKeyVal[0] = 86;      //V key

	//Initialize scores and game settings.
	global.ps_playerScore = 0;

	//The ps_level the player is on. The player must eat ps_level * 20 humans to progress to the next ps_level.
	global.ps_level = 1;

	//How big the player is. The player's sprite is scaled with this.
	global.ps_playerSize = .6;

	//Coordinates where the player's score will appear.
	global.ps_playerScoreX = 48;
	global.ps_playerScoreY = 32;

	//Between levels this game has tutorial strings.
	//For now it holds 32. Not all are used.
	for (var _i = 0; _i <= 5; _i++)
	{
	    global.ps_tutorialString[_i] = "";
	}

	global.ps_tutorialString[2] = "Mines will begin appearing in this level.";
	global.ps_tutorialString[3] = "Tanks will begin appearing in this level.";
	global.ps_tutorialString[5] = "Helicopters will begin appearing in this level.";
}

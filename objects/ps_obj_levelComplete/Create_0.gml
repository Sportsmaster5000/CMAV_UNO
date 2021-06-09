//Sets the object as controlled by player 1 and sets its controls as such.

playerIndex = 0;
ps_set_controls(global.ps_rightKeyVal[playerIndex], global.ps_downKeyVal[playerIndex], global.ps_leftKeyVal[playerIndex], global.ps_upKeyVal[playerIndex], global.ps_bKeyVal[playerIndex], global.ps_aKeyVal[playerIndex], global.ps_xKeyVal[playerIndex], global.ps_yKeyVal[playerIndex]);

//Starts the timer. This will be used to make the text blink.
timer = 0;

//The player is given a string giving information each ps_level.
ps_tutorialString = "";

if (global.ps_level < array_length_1d(global.ps_tutorialString))
{
    ps_tutorialString = global.ps_tutorialString[global.ps_level];
}


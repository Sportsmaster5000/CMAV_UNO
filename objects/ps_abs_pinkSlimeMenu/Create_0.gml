/// @description Sets the object as controlled by player 1 and sets its controls as such.

playerIndex = 0;
ps_set_controls(global.ps_rightKeyVal[playerIndex], global.ps_downKeyVal[playerIndex], global.ps_leftKeyVal[playerIndex], global.ps_upKeyVal[playerIndex], global.ps_bKeyVal[playerIndex], global.ps_aKeyVal[playerIndex], global.ps_xKeyVal[playerIndex], global.ps_yKeyVal[playerIndex]);

//Array of options the player can choose.
option[0] = "";

//Which option is selected.
optionSelected = 0;


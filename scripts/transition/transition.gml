/// @function transition_create(_xTo, _yTo, _roomTo, _name)
/// @description initializes variables for a transition object.
/// @param _x the x coordinate the play3er will be moved to.
/// @param _y the y coordinate the player will be moved to.
/// @param _roomTo The room the player will be moved to.
/// @param _name The string representation of the room that will be transferred too.
function transition_create(_xTo, _yTo, _roomTo, _name) 
{
	
	xTo = _xTo;
	yTo = _yTo;
	roomTo = _roomTo;
	name = _name;
	
}
 
 /// @function transition_board(_xTo, _yTo, _roomTo)
/// @description sends the player to a new board. Also positions the PLAYER object at x, y
/// @param _xTo The x coordinate the player object will be moved to.
/// @param _yTo the Y coordinate the player object will be moved to.
/// @param _roomTO The room that will be moved to.
function transition_board(_xTo, _yTo, _roomTo) 
{

	show_debug_message("\nRoom to: " + room_get_name(_roomTo) + " X: " + string(_xTo) + "Y: " + string(_yTo));
	
	global.playerSpawnX = _xTo;
	global.playerSpawnY = _yTo;


	room_goto(_roomTo)


}

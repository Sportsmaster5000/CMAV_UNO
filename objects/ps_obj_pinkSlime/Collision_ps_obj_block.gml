/// @description If the player is inside a PS_BLOCK, moves them up until they are out of it.
while (place_meeting(x, y, PS_BLOCK))
{ 
    y--;
}



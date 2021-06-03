/// @description Overrides parent event. Increment timer.
timer++;

//After three seconds, offers the player the choice to go to orientation.
if (timer > timerDuration)
{
	transition_board(xTo, yTo, roomTo);
}
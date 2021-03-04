/// @description If fading out, increments fade and if it's high enough sends the player to the next room.

//If collided with, starts fading out.
if (fadeOut)
{
	fade += 1/fadeTime;
	
	if (fade >= 1)
	{
		event_user(0);
	}
}
/// @description, Inherit the parent event, fades if needed
event_inherited();

//If interacted  with, starts fading out.
if (fadeOut)
{
	fade += 1/fadeTime;

	
	if (fade >= 1)
	{
		event_user(1);
	}
}


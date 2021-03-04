/// @description Destroys self if flag has already been raised.

if (global.storyTim2)
{
	instance_destroy();	
}

event_inherited();


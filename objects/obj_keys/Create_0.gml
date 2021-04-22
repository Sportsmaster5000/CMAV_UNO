/// @description Destroys self if flag has already been raised.

if (global.storyKeysCollected)
{
	instance_destroy();	
}

event_inherited();
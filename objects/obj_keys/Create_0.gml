/// @description Destroys self if flag has already been raised.

if (ds_list_find_index(global.keysCollected, id) != -1)
{
	instance_destroy();	
}

event_inherited();

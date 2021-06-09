/// @description ps_spawn_civilian()
function ps_spawn_civilian() {
	//Spawns a civillian at a random x coordinate outside of the player's view.

	//Randomly selects a point on the x coordinate to place a building.
	var _x = irandom(room_width);
    
	//If the player is at the position, checks a different spot.   
	while (_x > __view_get( e__VW.XView, view_current )) && (_x < (__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WPort, view_current )))
	{
	    _x = irandom(room_width);
	}

	instance_create(_x, PS_BUILDING_Y - 10, ps_obj_civilian);



}

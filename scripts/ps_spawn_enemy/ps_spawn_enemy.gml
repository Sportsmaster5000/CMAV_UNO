/// @description ps_spawn_enemy(enemy type)
/// @param enemy type
function ps_spawn_enemy(argument0) {
	//Spawns a tank at a random position.

	var _enemy = argument0;
	var _x = choose(PS_ENEMY_SPAWN_LEFT_X, PS_ENEMY_SPAWN_RIGHT_X);

	//If the player is at the position, checks a different spot.   
	while (_x > __view_get( e__VW.XView, view_current )) && (_x < (__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WPort, view_current )))
	{
	    _x = choose(PS_ENEMY_SPAWN_LEFT_X, PS_ENEMY_SPAWN_RIGHT_X);
	}


	instance_create(_x, PS_BUILDING_Y - 10, _enemy);
	show_debug_message("Tank spawned!");



}

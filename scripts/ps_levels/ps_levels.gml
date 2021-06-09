/// @description ps_level_initialize(buildings, civillians, mines)
/// @param buildings
/// @param  civillians
/// @param  mines
function ps_level_initialize(argument0, argument1, argument2) {
	//Starts a new level.
	var _buildings = argument0;
	var _civilians = argument1;
	var _mines = argument2;

	//Randomly chooses the background.
	__background_set( e__BG.Index, 0, choose(ps_BGA, ps_BGB, ps_BGC, ps_BGD, ps_BGE, ps_BGF, ps_BGG, ps_BGH) );

	//Populates the level with buildings.
	for (var _i = 0; _i < _buildings; _i++)
	{
	    var _x = irandom(room_width);
    
	    while (position_meeting(_x, PS_BUILDING_Y - 1, ps_obj_block))
	    {
	        _x = irandom(room_width);
	    }

	    //Randomly selects a point on the x coordinate to place a building.
	    instance_create(_x, PS_BUILDING_Y, ps_obj_building)
	}

	//Adds civilians.
	show_debug_message("Now initializing " + string(_civilians) + "civilians...");
	for (var _i = 0; _i <= _civilians; _i++)
	{
	    ps_spawn_civilian();
	}

	//Populates the level with mines.
	for (var _i = 0; _i < _mines; _i++)
	{

	    //Randomly selects a point on the x coordinate to place a building.
	    instance_create(irandom(room_width), PS_BUILDING_Y, ps_obj_mine);
	}

	//If tanks or helicopters are allowed in this level, spawns one.

	if (instance_number(ps_obj_tank) < floor(PS_TANK_CAP))
	{
	    ps_spawn_enemy(ps_obj_tank);
	}

	if (instance_number(ps_obj_helicopter) < floor(PS_HELICOPTER_CAP))
	{
	    ps_spawn_enemy(ps_obj_helicopter);
	}

	//Play the sound effect.
	audio_play_sound(ps_snd_startGame, 3, false);
}


/// @description ps_level_complete()
function ps_level_complete() 
{
	//Finishes this level, goes to level complete screen.

	global.ps_hp += PS_LEVEL_COMPLETE_HP_BONUS;
	global.ps_playerScore += PS_LEVEL_COMPLETE_SCORE_BONUS;
	global.ps_hp = min(global.ps_hp, global.ps_maxHP);

	global.ps_level++;
	room_goto(ps_room_pinkSlimeLevelComplete);
}
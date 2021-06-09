function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // abs_hurtBox
	global.__objectDepths[1] = 0; // abs_actor
	global.__objectDepths[2] = 0; // abs_menu
	global.__objectDepths[3] = 0; // abs_explosive
	global.__objectDepths[4] = 0; // ps_obj_control
	global.__objectDepths[5] = 0; // ps_obj_block
	global.__objectDepths[6] = -1; // obj_player
	global.__objectDepths[7] = 0; // obj_timer
	global.__objectDepths[8] = 0; // ps_obj_building
	global.__objectDepths[9] = -4; // ps_obj_civilian
	global.__objectDepths[10] = -4; // ps_obj_mine
	global.__objectDepths[11] = -5; // ps_obj_explosion
	global.__objectDepths[12] = -4; // ps_obj_tank
	global.__objectDepths[13] = -4; // ps_obj_helicopter
	global.__objectDepths[14] = -4; // ps_obj_rocket
	global.__objectDepths[15] = -4; // ps_obj_bomb
	global.__objectDepths[16] = 0; // ps_obj_titleScreen
	global.__objectDepths[17] = 0; // ps_obj_levelComplete
	global.__objectDepths[18] = 0; // ps_obj_gameOver


	global.__objectNames[0] = "abs_hurtBox";
	global.__objectNames[1] = "abs_actor";
	global.__objectNames[2] = "abs_menu";
	global.__objectNames[3] = "abs_explosive";
	global.__objectNames[4] = "ps_obj_control";
	global.__objectNames[5] = "ps_obj_block";
	global.__objectNames[6] = "obj_player";
	global.__objectNames[7] = "obj_timer";
	global.__objectNames[8] = "ps_obj_building";
	global.__objectNames[9] = "ps_obj_civilian";
	global.__objectNames[10] = "ps_obj_mine";
	global.__objectNames[11] = "ps_obj_explosion";
	global.__objectNames[12] = "ps_obj_tank";
	global.__objectNames[13] = "ps_obj_helicopter";
	global.__objectNames[14] = "ps_obj_rocket";
	global.__objectNames[15] = "ps_obj_bomb";
	global.__objectNames[16] = "ps_obj_titleScreen";
	global.__objectNames[17] = "ps_obj_levelComplete";
	global.__objectNames[18] = "ps_obj_gameOver";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}

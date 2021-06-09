/// @description game_initialize()
function ps_game_initialize() {
	//Code ran at the very very start of the game.

	//Activates random number generator.
	randomize();

	//Initializes global variables.
	ps_initialize_globals();

	//Creates a control object.
	if (!instance_exists(ps_obj_control))
	{
	    instance_create(0, 0, ps_obj_control);
	}

	//Initializes text settings.
	draw_set_color(c_pink);
	draw_set_font(ps_fnt_font);
}

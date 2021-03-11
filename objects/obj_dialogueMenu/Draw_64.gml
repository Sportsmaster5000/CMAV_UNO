/// @description Draws the current text with a box.
draw_set_alpha(0.5);
draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false)
draw_set_alpha(1);
dialogue_menu_draw_gui();


if (array_length(options) > 0)
{
	draw_set_alpha(0.75);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
	
	//gets the 'title' element from options and uses them for the strings presented to the user for each choice.
	var _optionTitles = array_create(array_length(options), 0);
	
	for (var _i = 0; _i < array_length(options); _i++)
	{
		_optionTitles[_i] = options[_i].title;
	}
	
	menu_draw(room_width/2, 20, _optionTitles, c_white, c_gray, room_height, optionSelected);
}
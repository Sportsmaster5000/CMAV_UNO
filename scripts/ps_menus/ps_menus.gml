/// @description ps_menu_draw(x, y, array, color1, color2, height, select)
/// @param x
/// @param  y
/// @param  array
/// @param  color1
/// @param  color2
/// @param  height
/// @param  select
function ps_menu_draw(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	//Draws a menu from the given array.
	var _x = argument0;         //x coordinate to draw the menu at.
	var _y = argument1;         //y coordinate to draw the menu at.
	var _array = argument2;     //array to draw.
	var _color1 = argument3;    //color for greyed out items.
	var _color2 = argument4;    //color for the selected item.
	var _height = argument5;    //height of the menu.
	var _select = argument6;    //selected item in the array.

	draw_set_colour(_color1);

	for (var _i = 0; _i < array_length_1d(_array); _i++)
	{
	    if (_i != _select)
	    {
	        draw_set_colour(_color2);
	    }
    
	    draw_text(_x, _y + ((_height * _i)/array_length_1d(_array)), string_hash_to_newline(string(_array[_i])));
    
	    draw_set_colour(_color1);
	}
}


/// @description ps_menu_draw_horizontal(x, y, array, color1, color2, height, select)
/// @param x
/// @param  y
/// @param  array
/// @param  color1
/// @param  color2
/// @param  height
/// @param  select
function ps_menu_draw_horizontal(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	//Draws a menu from the given array.
	var _x = argument0;         //x coordinate to draw the menu at.
	var _y = argument1;         //y coordinate to draw the menu at.
	var _array = argument2;     //array to draw.
	var _color1 = argument3;    //color for greyed out items.
	var _color2 = argument4;    //color for the selected item.
	var _width = argument5;    //height of the menu.
	var _select = argument6;    //selected item in the array.

	draw_set_colour(_color1);

	for (var _i = 0; _i < array_length_1d(_array); _i++)
	{
	    if (_i != _select)
	    {
	        draw_set_colour(_color2);
	    }
    
	    draw_text(_x + ((_width * _i)/array_length_1d(_array)), _y, string_hash_to_newline(string(_array[_i])));
    
	    draw_set_colour(_color1);
	}
}

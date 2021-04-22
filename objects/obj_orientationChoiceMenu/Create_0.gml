/// @description Overrides parent, initializes own options.
var _array;
_array[0] = "Yes";
_array[1] = "No";



menu_create(_array);

//Also includes a room transition.
transition_create(4200, 2100, room_overworld1, "");
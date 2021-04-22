/// @description Overrides parent, initializes own options.
var _array;
_array[0] = "Raise Attack";
_array[1] = "Raise Defense";
_array[2] = "Raise Max HP";
_array[3] = "Raise Max SP";
_array[4] = "Exit";



menu_create(_array);

//Also includes a room transition.
transition_create(4200, 2100, room_overworld1, "");
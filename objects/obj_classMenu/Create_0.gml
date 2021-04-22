/// @description Overrides parent, options.
var _array;
_array[0] = "Math Class\t\t200$";
_array[1] = "Science Class\t\t200$";
_array[2] = "Social Studies Class\t\t200$";
_array[3] = "Phys Ed Class\t\t200$";
_array[4] = "Exit";

//This one also creates a corresponding prices array.
prices = array_create(4, 200);


menu_create(_array);

//Also includes a room transition.
transition_create(3000, 2000, room_overworld2, "");
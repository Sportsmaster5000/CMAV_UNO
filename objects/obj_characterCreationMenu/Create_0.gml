/// @description Overrides parent, initializes own options.
var _array;
_array[0] = "< Character Select >";

menu_create(_array);


//Also includes a room transition.
transition_create(1040, 1200, room_startingCutscene);

//Sprite set currently being selected.
spritesetIndex = 0;
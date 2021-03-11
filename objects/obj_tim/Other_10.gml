var _array;
_array[0] = "Do you want to do my obstacle course? If you win you get 1 free javelin!";
_array[1] = "%CHOICE [Yes&2][No&3]"
_array[2] = "%ROOM 1200 1800 room_obstacleCourse";
_array[3] = "Okay. If you ever want to just come find me!";

if (global.storyTim2)
{
	var _array;
	_array[0] = "Do you want to do my obstacle course again?";
	_array[1] = "%CHOICE [Yes&2][No&3]"
	_array[2] = "%ROOM 1200 1800 room_obstacleCourse";
	_array[3] = "Okay. If you ever want to just come find me!";
}

dialogue_enter(_array, spr_portraitTim);

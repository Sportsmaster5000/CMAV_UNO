/// @description Adds event flags before speaking.

var _array;
_array[0] = "Elmwood park is great for skateboarding.";



if (global.storyVincent1) && !(global.storyVincent3)
{
	var _array;
	_array[0] = "Yeah I have some regular coffee. Why?";
	_array[1] = "Oh, Vincent tried to quite caffeine again? Yeah withdrawal makes him really cranky.";
	_array[2] = "Here, I just made a batch. Give this pot to Vincent in Elmwood Park before he kills someone.";
	
	global.storyVincent3 = true;
}

dialogue_enter(_array, spr_portraitMicheal)
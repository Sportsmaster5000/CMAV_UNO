var _array;
_array[0] = "What lovely weather for a stroll in the park!";


if !(global.storyVincent4)
{
	
	var _array;
	_array[0] = "Vincent switched to decaf and he's been so crabby lately! That loon hauled off and started throwing coffee mugs at Falk!"
	_array[1] = "Could you go talk to him? He's just across the street by PKI. Be careful, some people get really irritable without their caffeine!";
	_array[2] = "Afterwards, come talk to me.";
	global.storyVincent1 = true;
	
	if (global.storyVincent2)
	{
		var _array;
		_array[0] = "He attacked you?! His withdrawal symptoms are worse than I thought."
		_array[1] = "Go talk to Michael and he'll give you some real coffee for Vincent."
		_array[2] = "Give it to Vincent and he should go back to normal."
	}
	
	if (global.storyVincent3)
	{
		var _array;
		_array[0] = "Good, you got the coffee! Hurry and give it to someone before he cracks someone's head open!"
		_array[1] = "Do you have any idea how much they could sue us for?"
	}
}

dialogue_enter(_array, spr_portraitJim);
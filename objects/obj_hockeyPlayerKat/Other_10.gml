/// @description  Changes dialogue based on flags.
 
var _array;
_array[0] = "Gotta practice for the big game!";

if (global.cats < 4)
{
	var _array;
	_array[0] = "I left my little kittens here a second ago and they ran off. They could have gone all over campus.";
	_array[1] = "These are there favorite treats can you bring them back to me! I'm missin out on precious cuddling time!"
	global.storyCatsStart = true;
	
}
else
{
	var _array;
	_array[0] = "Thanks you so much. I don't know what I would have done without my precious furballs.";
	
	if !(global.storyCatsComplete)
	{
		var _text = "Reputation +10";
		
		myBalloon = instance_create_layer(PLAYER.x, PLAYER.y - sprite_height, layer, obj_rainbowMessage);
		with (myBalloon)
		{
			message_create(_text, game_get_speed(gamespeed_fps) * TEXT_SPEED);
		}
		global.reputation += 10;
		global.storyCatsComplete = true;
		
		spriteIndex = spr_katComplete;
	}
	
	
		
}

// Inherit the parent event

dialogue_enter(_array, spr_portraitKat);

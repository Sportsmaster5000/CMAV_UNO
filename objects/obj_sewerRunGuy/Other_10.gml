/// @description  Changes dialogue based on flags.
 
var _array;
_array[0] = "Gotta practice for the big game!";

if (global.storyKeysCollected == false)
{
	var _array;
	_array[0] = "I dropped my keys while I was past the Cinema. I think they fell down a sewer drain.";
	_array[1] = "I won't be able to start class without my keys."
	global.storyKeysStart = true;
	
}
else
{
	var _array;
	_array[0] = "Thanks you so much. The keys do have a new smell. But now I can give my students that pop quiz. ";
	
	if !(global.storyKeysComplete)
	{
		var _text = "Reputation +10";
		
		myBalloon = instance_create_layer(PLAYER.x, PLAYER.y - sprite_height, layer, obj_rainbowMessage);
		with (myBalloon)
		{
			message_create(_text, game_get_speed(gamespeed_fps) * TEXT_SPEED);
		}
		global.reputation += 10;
		global.storyKeysComplete = true;
		
		spriteIndex = spr_katComplete;
	}
	
	
		
}

// Inherit the parent event

dialogue_enter(_array, spr_portraitKat);

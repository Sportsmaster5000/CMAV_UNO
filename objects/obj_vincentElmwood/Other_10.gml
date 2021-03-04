/// @description Adds event flags before speaking.

var _array;
_array[0] = "Nothing like a hot mug of joe.";

//If vincent's quest is active.
if (!global.storyVincent4)
{
	if (global.storyVincent1)
	{
		var _array;
		_array[0] = "RRRRRRRRRRRRRRRR!!!!! I'm so tired. I just want to rip someone's head off!";
		_array[1] = "WHAT ARE YOU LOOKING AT?! You got a problem?!";
	
		alignment = faction.enemy;
		sprite_index = spr_vincentMad;
		global.storyVincent2 = true;
	}

	if (global.storyVincent3)
	{
		var _array;
		_array[0] = "You brought me coffee? Real coffee? Forget switching to decaf, I need my caffeine!";
		_array[1] = "*GULP GULP GULP*";
		_array[2] = "Ah, that was great! Man, I was being a jerk.";
		_array[3] = "Thanks for the coffee. I'll put in a good word for you around campus.";
	
	
		
		var _text = "Reputation +10";
		
		myBalloon = instance_create_layer(PLAYER.x, PLAYER.y - sprite_height, layer, obj_rainbowMessage);
		with (myBalloon)
		{
			message_create(_text, game_get_speed(gamespeed_fps) * TEXT_SPEED);
		}
		global.reputation += 10;
	
		alignment = faction.neutral;
		sprite_index = spr_vincent;
		image_speed = 0;
		global.storyVincent4 = true;
	}
}

dialogue_enter(_array, spr_portraitVincent)
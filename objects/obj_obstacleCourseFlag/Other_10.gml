/// @description Gives powerups, initiates convo.
var _text = "Obstacle Course Completed!\nJavelin Skill Acquired!"

myBalloon = instance_create_layer(x, y - sprite_height, layer, obj_rainbowMessage);
with (myBalloon)
{
	message_create(_text, game_get_speed(gamespeed_fps) * 5);
}

global.storyTim2 = true;
global.playerSkills[array_length(global.playerSkills)] = global.skills[1];


instance_destroy();
	instance_destroy(obj_timer);

var _array;
_array[0] = "Good job completing my obstacle course! Here's your Javelin. Just come talk to me if you want to try again.";

dialogue_enter(_array, spr_portraitTim);

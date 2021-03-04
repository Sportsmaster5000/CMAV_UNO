/// @description Raises maxHP and heals user when interacted with.
var _text = "Obstacle Course Completed!\nJavelin Skill Acquired!"

myBalloon = instance_create_layer(x, y - sprite_height, layer, obj_rainbowMessage);
with (myBalloon)
{
	message_create(_text, game_get_speed(gamespeed_fps) * 5);
}

global.storyTim2 = true;
global.playerSkills[array_length(global.playerSkills)] = global.skills[1];


instance_destroy();
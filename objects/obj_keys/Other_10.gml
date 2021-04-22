/// @description The player retreived the keys
// Text printed when keys collected.
var _text = "Keys Retreived!"

myBalloon = instance_create_layer(x, y - sprite_height, layer, obj_rainbowMessage);
with (myBalloon)
{
	message_create(_text, game_get_speed(gamespeed_fps) * 5);
}

// Register the player collected the keys
global.storyKeysCollected = true;

instance_destroy();
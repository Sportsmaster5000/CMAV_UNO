/// @description The player saved the kitten
// Text printed when kitten collected.
var _text = "Keys Retreived!"

myBalloon = instance_create_layer(x, y - sprite_height, layer, obj_rainbowMessage);
with (myBalloon)
{
	message_create(_text, game_get_speed(gamespeed_fps) * 5);
}

// Add to the number of collected cats to keep track
global.keysCollected++;

//Adds the id of the collected cat to the list.
with (other)
{
	ds_list_add(global.keysCollected, id);
}

instance_destroy(other, true);
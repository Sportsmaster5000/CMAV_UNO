/// @description Overwrites parent.
var _text= "Nothing like a hot cup of joe.";

npc_create(_text, "Vincent", 5, 0.25, 0.25, true, faction.neutral, 0);

image_speed = 0;
attackTime = game_get_speed(gamespeed_fps) * 2;
attackTimer = 0;
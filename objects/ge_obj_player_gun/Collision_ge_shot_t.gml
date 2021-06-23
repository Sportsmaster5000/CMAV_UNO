/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3F55012A
/// @DnDArgument : "expr" "-6"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hp"
hp += -6;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 52E050F4
/// @DnDArgument : "soundid" "ge_damage"
/// @DnDSaveInfo : "soundid" "ge_damage"
audio_play_sound(ge_damage, 0, 0);
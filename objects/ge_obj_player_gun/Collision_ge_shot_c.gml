/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 66B7490B
/// @DnDArgument : "expr" "-18"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hp"
hp += -18;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2D10976E
/// @DnDArgument : "soundid" "ge_damage"
/// @DnDSaveInfo : "soundid" "ge_damage"
audio_play_sound(ge_damage, 0, 0);
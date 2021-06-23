/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 293D6EEE
/// @DnDArgument : "expr" "-25"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hp"
hp += -25;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4CAE7B65
/// @DnDArgument : "soundid" "ge_expo"
/// @DnDSaveInfo : "soundid" "ge_expo"
audio_play_sound(ge_expo, 0, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7B76A185
/// @DnDArgument : "soundid" "ge_damage"
/// @DnDSaveInfo : "soundid" "ge_damage"
audio_play_sound(ge_damage, 0, 0);
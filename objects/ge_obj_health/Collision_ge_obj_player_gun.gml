/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 65A83780
/// @DnDArgument : "soundid" "pick_up_hp"
audio_play_sound(pick_up_hp, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5286519B
/// @DnDApplyTo : obj_player_gun
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "hp"
with(obj_player_gun) {
hp = 100;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 07C225B3
instance_destroy();
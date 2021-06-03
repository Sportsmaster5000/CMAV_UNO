/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 16A372CA
/// @DnDArgument : "soundid" "pick_up_sniper"
/// @DnDSaveInfo : "soundid" "pick_up_sniper"
audio_play_sound(ge_pick_up_sniper, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2E75A1D7
/// @DnDApplyTo : {obj_player_gun}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "sniper_on"
with(ge_obj_player_gun) {
sniper_on = 1;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6859082A
instance_destroy();
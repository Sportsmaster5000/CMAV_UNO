/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 07926275
/// @DnDArgument : "soundid" "ge_impact"
/// @DnDSaveInfo : "soundid" "ge_impact"
audio_play_sound(ge_impact, 0, 0);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 43F88135
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "ge_Sprite5"
/// @DnDSaveInfo : "spriteind" "ge_Sprite5"
sprite_index = ge_Sprite5;
image_index = 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 49A0AC29
instance_destroy();
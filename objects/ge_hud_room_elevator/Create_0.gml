/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 36CE0BA6
/// @DnDArgument : "soundid" "ge_wind"
/// @DnDSaveInfo : "soundid" "ge_wind"
audio_stop_sound(ge_wind);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 2A58E54F
/// @DnDArgument : "soundid" "ge_train"
/// @DnDSaveInfo : "soundid" "ge_train"
audio_stop_sound(ge_train);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 00A37250
/// @DnDArgument : "soundid" "ge_music_lv1"
/// @DnDSaveInfo : "soundid" "ge_music_lv1"
audio_stop_sound(ge_music_lv1);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 483A24E8
/// @DnDArgument : "soundid" "ge_music_lv2"
/// @DnDSaveInfo : "soundid" "ge_music_lv2"
audio_stop_sound(ge_music_lv2);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 31A4DC2C
/// @DnDArgument : "soundid" "ge_train"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "ge_train"
audio_play_sound(ge_train, 0, 1);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
/// @DnDVersion : 1
/// @DnDHash : 0D049722
/// @DnDArgument : "sound" "ge_train"
/// @DnDArgument : "pitch" ".2"
/// @DnDSaveInfo : "sound" "ge_train"
audio_sound_pitch(ge_train, .2);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 36F60F03
/// @DnDArgument : "soundid" "ge_wind"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "ge_wind"
audio_play_sound(ge_wind, 0, 1);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 1C90CF79
/// @DnDArgument : "soundid" "ge_music_lv2"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "ge_music_lv2"
audio_play_sound(ge_music_lv2, 0, 1);
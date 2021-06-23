/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 5FEA8BBA
/// @DnDArgument : "soundid" "shot_energy"
audio_play_sound(shot_energy, 0, 0);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 69CDFCFD
/// @DnDArgument : "x" "obj_player_move.x"
/// @DnDArgument : "y" "obj_player_move.y"
direction = point_direction(x, y, obj_player_move.x, obj_player_move.y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 4B9F35A0
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 568138BF
/// @DnDArgument : "speed" "5"
speed = 5;
/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 26220F42
/// @DnDArgument : "x" "obj_player_move.x"
/// @DnDArgument : "y" "obj_player_move.y"
direction = point_direction(x, y, obj_player_move.x, obj_player_move.y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3BBB81CD
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0E87885B
/// @DnDArgument : "speed" "14"
speed = 14;
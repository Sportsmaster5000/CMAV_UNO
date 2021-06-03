/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 466E5424
/// @DnDArgument : "var" "centered"
/// @DnDArgument : "value" "true"
if(centered == true)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4D149995
	/// @DnDParent : 466E5424
	/// @DnDArgument : "x" "obj_player_move.x"
	/// @DnDArgument : "y" "obj_player_move.y-50"
	x = ge_obj_player_move.x;
	y = ge_obj_player_move.y-50;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 351E8E9F
/// @DnDArgument : "var" "centered"
/// @DnDArgument : "value" "false"
if(centered == false)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 29D922BB
	/// @DnDParent : 351E8E9F
	/// @DnDArgument : "x" "obj_player_move.x"
	/// @DnDArgument : "y" "obj_player_move.y-400"
	x = ge_obj_player_move.x;
	y = ge_obj_player_move.y-400;
}
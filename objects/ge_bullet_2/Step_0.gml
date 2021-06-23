/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F705157
/// @DnDArgument : "var" "distance_to_object(ge_obj_player_move)"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1300"
if(distance_to_object(ge_obj_player_move) >= 1300)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 10964A67
	/// @DnDParent : 4F705157
	instance_destroy();
}
/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2433EE7B
/// @DnDArgument : "x" "ge_obj_player_move.x-600"
/// @DnDArgument : "y" "ge_obj_player_move.y-900"
x = ge_obj_player_move.x-600;
y = ge_obj_player_move.y-900;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79DAFE53
/// @DnDArgument : "var" "boss_hp"
/// @DnDArgument : "op" "3"
if(boss_hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 24C81D9C
	/// @DnDApplyTo : {ge_en_turret}
	/// @DnDParent : 79DAFE53
	with(ge_en_turret) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4FCC17F5
	/// @DnDApplyTo : {ge_en_fly}
	/// @DnDParent : 79DAFE53
	with(ge_en_fly) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 592F70B9
	/// @DnDApplyTo : {ge_en_a_y_c}
	/// @DnDParent : 79DAFE53
	with(ge_en_a_y_c) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1D50B71B
	/// @DnDApplyTo : {ge_en_a_y_shot}
	/// @DnDParent : 79DAFE53
	with(ge_en_a_y_shot) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7FF45D68
	/// @DnDApplyTo : {ge_en_a_y_shot_2}
	/// @DnDParent : 79DAFE53
	with(ge_en_a_y_shot_2) instance_destroy();
}
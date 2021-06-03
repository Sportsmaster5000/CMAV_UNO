/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18D077C4
/// @DnDApplyTo : {ge_laser_check}
/// @DnDArgument : "var" "laser"
with(ge_laser_check) var l18D077C4_0 = laser == 0;
if(l18D077C4_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 30F11358
	/// @DnDParent : 18D077C4
	instance_destroy();
}
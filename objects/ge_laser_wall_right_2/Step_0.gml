/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18D077C4
/// @DnDApplyTo : {ge_laser_check_2}
/// @DnDArgument : "var" "laser2"
with(ge_laser_check_2) var l18D077C4_0 = laser2 == 0;
if(l18D077C4_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 30F11358
	/// @DnDParent : 18D077C4
	instance_destroy();
}
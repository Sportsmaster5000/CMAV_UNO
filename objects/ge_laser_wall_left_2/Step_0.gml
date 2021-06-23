/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2DA502EE
/// @DnDApplyTo : {ge_laser_check_2}
/// @DnDArgument : "var" "laser2"
with(ge_laser_check_2) var l2DA502EE_0 = laser2 == 0;
if(l2DA502EE_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0CD01B5A
	/// @DnDParent : 2DA502EE
	instance_destroy();
}
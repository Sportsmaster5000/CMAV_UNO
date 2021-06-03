/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45E11908
/// @DnDApplyTo : {ge_laser_check_2}
/// @DnDArgument : "var" "laser2"
with(ge_laser_check_2) var l45E11908_0 = laser2 == 0;
if(l45E11908_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3F4E77D9
	/// @DnDParent : 45E11908
	instance_destroy();
}
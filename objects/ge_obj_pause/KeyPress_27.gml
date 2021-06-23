/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B16B3D9
/// @DnDArgument : "code" "//pause$(13_10)if (!pause) {$(13_10)pause = true;$(13_10)instance_deactivate_all(true)$(13_10)}$(13_10)else{$(13_10)pause = false;$(13_10)instance_activate_all()$(13_10)}"
//pause
if (!pause) {
pause = true;
instance_deactivate_all(true)
}
else{
pause = false;
instance_activate_all()
}
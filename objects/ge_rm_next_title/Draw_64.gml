/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4CC620DA
/// @DnDArgument : "font" "ge_Font1"
/// @DnDSaveInfo : "font" "ge_Font1"
draw_set_font(ge_Font1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 381CA087
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l381CA087_0=($FF000000 >> 24);
draw_set_alpha(l381CA087_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 03799CD6
/// @DnDArgument : "x" "660"
/// @DnDArgument : "y" "700"
/// @DnDArgument : "caption" ""PRESS ENTER TO BEGIN ""
draw_text(660, 700, string("PRESS ENTER TO BEGIN ") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 205EA38B
draw_set_colour($FFFFFFFF & $ffffff);
var l205EA38B_0=($FFFFFFFF >> 24);
draw_set_alpha(l205EA38B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 10496A71
/// @DnDArgument : "x" "658"
/// @DnDArgument : "y" "700"
/// @DnDArgument : "caption" ""PRESS ENTER TO BEGIN ""
draw_text(658, 700, string("PRESS ENTER TO BEGIN ") + "");
/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4CC620DA
/// @DnDArgument : "font" "Font1"
draw_set_font(Font1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 381CA087
/// @DnDArgument : "color" "$FF006B01"
draw_set_colour($FF006B01 & $ffffff);
var l381CA087_0=($FF006B01 >> 24);
draw_set_alpha(l381CA087_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 03799CD6
/// @DnDArgument : "x" "672"
/// @DnDArgument : "y" "700"
/// @DnDArgument : "caption" ""PRESS ENTER TO PLAY AGAIN ""
draw_text(672, 700, string("PRESS ENTER TO PLAY AGAIN ") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 205EA38B
draw_set_colour($FFFFFFFF & $ffffff);
var l205EA38B_0=($FFFFFFFF >> 24);
draw_set_alpha(l205EA38B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 10496A71
/// @DnDArgument : "x" "670"
/// @DnDArgument : "y" "700"
/// @DnDArgument : "caption" ""PRESS ENTER TO PLAY AGAIN ""
draw_text(670, 700, string("PRESS ENTER TO PLAY AGAIN ") + "");
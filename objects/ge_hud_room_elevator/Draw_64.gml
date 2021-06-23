/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 519EFAC2
/// @DnDArgument : "font" "Font1"
draw_set_font(Font1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 53FC3DC6
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l53FC3DC6_0=($FF000000 >> 24);
draw_set_alpha(l53FC3DC6_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6A9CAF3A
/// @DnDArgument : "x" "31"
/// @DnDArgument : "y" "5"
/// @DnDArgument : "caption" ""- CARGO TRAIN -""
draw_text(31, 5, string("- CARGO TRAIN -") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7C58A649
/// @DnDArgument : "color" "$FF00FF00"
draw_set_colour($FF00FF00 & $ffffff);
var l7C58A649_0=($FF00FF00 >> 24);
draw_set_alpha(l7C58A649_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 771B9B79
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "5"
/// @DnDArgument : "caption" ""- CARGO TRAIN -""
draw_text(30, 5, string("- CARGO TRAIN -") + "");
/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 24DBBB30
/// @DnDArgument : "font" "ge_Font1"
/// @DnDSaveInfo : "font" "ge_Font1"
draw_set_font(ge_Font1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4C99C6C8
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l4C99C6C8_0=($FF000000 >> 24);
draw_set_alpha(l4C99C6C8_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 60327C76
/// @DnDArgument : "x" "51"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""ENEMIES REMAINING: ""
/// @DnDArgument : "var" "count"
draw_text(51, 30, string("ENEMIES REMAINING: ") + string(count));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1DBE5A1E
draw_set_colour($FFFFFFFF & $ffffff);
var l1DBE5A1E_0=($FFFFFFFF >> 24);
draw_set_alpha(l1DBE5A1E_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 512D3807
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""ENEMIES REMAINING: ""
/// @DnDArgument : "var" "count"
draw_text(50, 30, string("ENEMIES REMAINING: ") + string(count));
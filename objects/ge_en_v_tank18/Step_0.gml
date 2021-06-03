/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E9AF9D3
/// @DnDArgument : "code" "if(distance_to_object(ge_tank_spawn) <= 10)$(13_10){$(13_10)	direction = 270;$(13_10)$(13_10)	speed = 3;$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)	direction = 90;$(13_10)$(13_10)	speed = 3;$(13_10)}"
if(distance_to_object(ge_tank_spawn) <= 10)
{
	direction = 270;

	speed = 3;
}

else
{
	direction = 90;

	speed = 3;
}
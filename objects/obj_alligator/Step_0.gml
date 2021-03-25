/// @description Inherits. Performs pilot behavior, animates./
event_inherited();

//Pick a target.
//If the player is not being targeted and the alignment is enemy, sets player as the target.
if (target != PLAYER) && (alignment == faction.enemy)
{
	target = PLAYER;
}

switch(target)
{
	case(noone):
		pilot_passive();
	break;
	default:
		pilot_aggressive(target);
	break;
}

//State machine. Turn to switch statement if I add more states.
if (state == pilotStates.run)
{
	///If the hockey player is grounded and not moving, makes them take a step.
	if grounded
	{
		hsp = facing * accel;	
	}
}

//animates
pilot_animate();







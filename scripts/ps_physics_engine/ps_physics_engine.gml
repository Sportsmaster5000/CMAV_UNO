/// @description ps_physics()
function ps_physics() {
	//Physics for actors

	//grav increases the object's downwards speed by raising vsp. Does not do so past the terminal velocity.
	if (vsp < PS_TERMINAL_VELOCITY)
	{
	    vsp += grav;
	}


	//Friction will reduce horizontal speed. This is reduced while in the air.
	if (grounded)
	{
	    hsp -= frict * sign(hsp);
	}

	//If hsp is lower than the friction value, it just sets hsp to 0.
	if (abs(hsp) < frict)
	{
	    hsp = 0;
	}


	//Collision with walls. The object's position is changed after each collision function.
	if (collision)
	{
	    vsp = ps_floor_collision(vsp);
	    hsp = ps_wall_collision(hsp);
	}

	//Stops the object if it is going outside the horizontal edge of the screen.
	if (ps_oob_horizontal(x + hsp))
	{
	    hsp = 0;
	}


	//Sets the final values.
	vspFinal = vsp;
	hspFinal = hsp;

	//Actually moves the object.
	y += vspFinal;
	x += hspFinal;

	//Checks if an object is on the PS_GROUND.
	grounded = ps_bottom(bbox_bottom + 1, PS_GROUND);
}

/// @description ps_floor_collison(vsp)
/// @param vsp
function ps_floor_collision(argument0) {
	//Stops the player if they would touch a PS_BLOCK vertically
	var _vsp = argument0;

	//Checks every pixel in the player's path for collision.
	for (var i = 0; (abs(i) < abs(_vsp)) || (place_meeting(x, y + i, PS_BLOCK)); i += sign(_vsp))
	{
	    //If there is a collision, it will move the player as close to the object as possible and then stop.
	    //This is the check for collision with blocks.
	    if (place_meeting(x, y + i, PS_BLOCK))
	    {
	        y += i - sign(_vsp);
	    return 0;
	    }
	}

	return _vsp;
}

/// @description ps_wall_collision(hsp)
/// @param hsp
function ps_wall_collision(argument0) {
	//If the object would end up inside the PS_BLOCK object, it instead just moves them as close as possible.
	//If they are above a given threshold for speed, they bounce off of it.
	var hsp = argument0;

	//Checks every pixel in the object's path for collision.
	for (var i = 0; (abs(i) < abs(hsp)) || (place_meeting(x + i, y, PS_BLOCK)); i += sign(hsp))
	{
	    //If there is a collision, it will move the player as close to the object as possible and then stop. Bas a tiny upwards margin for now.4
	    if (place_meeting(x + i, y, PS_BLOCK))
	    {
	        x += i - sign(hsp);
	        return -hsp;
	    }
	}
	
	return hsp;
}

function ps_actor_initialize() 
{
	//ps_actor_initialize()
	//Initializes actor variables.


	//Collision is by default on.
	collision = true;

	//How much the object's hsp decreases each step when the player is not standing on the floor or anything.
	grav = .2;

	//How much the object's hsp decreases each step.
	frict = .1;

	//Horizontal speed and vertical speed.
	hsp = 0;
	vsp = 0;

	//These variables are ones for after hsp and vsp have any modifiers added to them.
	hspFinal = 0;
	vspFinal = 0;


	//The object is considered grounded if they are directly above a PS_BLOCK.
	grounded = place_meeting(x, y + 1, PS_GROUND)
}

/// @description ps_bottom(y, object)
/// @param y
/// @param  object
function ps_bottom(argument0, argument1) 
{
	//Checks for an object directly under the calling object (in a line from bbox left to bbox right)
	//returns true if the calling object is there. Otherwise returns false.

	//The y-coordinate we're checking for collision. Usually this will be bbox_bottom + 1
	var _ycoord = argument0;

	//The object we're checking for a collision with.
	var _object = argument1;

	//Checks every pixel directly under the object's bounding box.
	for (var i = bbox_left; i <= bbox_right; i++)
	{
	    if (instance_position(i, _ycoord, _object))
	    {
	        return true;
	    }
	}

	return false;
}


function ps_oob_horizontal(argument0) 
{
	//Checks if the given x coordinate is outside of the room.
	var _x = argument0;

	if (_x < 0 || _x > room_width)
	{
	    return true;
	}
	
	return false;
}

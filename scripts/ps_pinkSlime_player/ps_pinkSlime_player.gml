/// @description ps_pinkSlime_initialize()
function ps_pinkSlime_initialize() 
{
	//Initialize the player's starting variables.


	//Spawning resets the player's PS_INVINCIBILITY timer.
	invincibility = PS_INVINCIBILITY;

	//Gets the player's starting coordinates.
	xStart = x;
	yStart = y;

	//Horizontal direction. 1 is moving right, -1 is moving left, 0 isn't moving at all.
	hdir = 0;

	//facing is equal to hdir so long as it's not 0.
	facing = 1;

	//Set friction.
	frict = .02;

	//Determines how fast the object can accelerate
	accel = .05;

	//The object's maximum speed when accelerating itself.
	maxSpeed = 5;

	//Determines how high the object jumps. That is to say, it defines the increase in hsp jumping causes.
	jumpHeight = PS_JUMP_HEIGHT;

	//Sets the playerIndex.
	playerIndex = ps_instance_get_index();

	//Sets the controls.
	ps_set_controls(global.ps_rightKeyVal[playerIndex], global.ps_downKeyVal[playerIndex], global.ps_leftKeyVal[playerIndex], global.ps_upKeyVal[playerIndex], global.ps_bKeyVal[playerIndex], global.ps_aKeyVal[playerIndex], global.ps_xKeyVal[playerIndex], global.ps_yKeyVal[playerIndex]);

	//Spawns a hurtbox for the player.
	//hurtbox = player_spawn_hurtbox();

	//Sets the animation speed.
	image_speed = 0.2;
}


/// @description ps_pinkSlime_animate()
function ps_pinkSlime_animate() {
	//animates the player character.
	image_xscale = global.ps_playerSize * facing;


	//If the player is ascending, changes their sprite to the jump sprite.
	if (vsp < 0)
	{
	    sprite_index = ps_spr_pinkSlime;
	}

	//If the player is descending, changes it to the descent sprite.
	if (vsp > 0)
	{
	    sprite_index = ps_spr_pinkSlime;
	}

	if (abs(vsp) < 0.5) 
	{
	    sprite_index = ps_spr_pinkSlime;
	}
}

/// @description ps_pinkSlime_damage(damage, knockbackX, knockbackY)
/// @param damage
/// @param  knockbackX
/// @param  knockbackY
function ps_pinkSlime_damage(_damage, _knockbackX, _knockbackY) 
{
	//Damages the playr.
	global.ps_hp -= _damage;
	hsp += _knockbackX;
	vsp += _knockbackY
}

/// @description ps_pinkSlime_control()
function ps_pinkSlime_control() 
{
	//The player object's controls.


	//Horizontal movement code.
	//Gets controller input for horizontal direction.
	hdir = PS_RIGHT_BUTTON - PS_LEFT_BUTTON;

	//Sets the direction the player is facing. This will be used when animating the sprite.
	if (hdir != 0)
	{
	    facing = hdir;
	}
    
	if (!grounded)
	{
	    //Modifies the hsp variable.
	    if (abs(hsp + (hdir * accel)) < maxSpeed)
	    {
	        hsp += hdir * accel;
	    }
	}

	//If the player presses the jump button they jump.
	if ((PS_A_BUTTON) || (PS_B_BUTTON)) && grounded
	{
	    audio_play_sound(ps_snd_jump, 3, false);
	    vsp = min(-jumpHeight, vsp);
	}

	//If the player is holding the jump button, this offsets gravity, increasing their jump power.
	vsp -= ((PS_A_BUTTON) || (PS_B_BUTTON)) * PS_GRAVITY_OFFSET;
}

/// @description ps_pinkSlime_eat_person(other)
/// @param other
function ps_pinkSlime_eat_person(argument0) {
	//Code that is called when the player eats a person.
	var _person = argument0;

	//Play the sound effect.
	audio_play_sound(ps_snd_chomp, 2, false);

	peopleEaten++;

	if (global.ps_playerSize > 6)
	{
	    //Does nothing.
	}
	else if (global.ps_playerSize > 2)
	{
	    global.ps_playerSize += PS_LOW_SIZE_INCREASE;
	}
	else
	{
	    global.ps_playerSize += PS_HIGH_SIZE_INCREASE;
	}


	if (global.ps_hp < global.ps_maxHP)
	{
	    global.ps_hp++;
	    global.ps_hp = min(global.ps_maxHP, global.ps_hp);
	}

	with (_person)
	{
	    instance_destroy();
	}
}

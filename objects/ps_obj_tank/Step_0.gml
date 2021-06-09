/// @description Inheritance.
event_inherited();

///Tracks player movements, decides to move based on that.

targetDistance = distance_to_object(target);

//The direction the target is relative to this object. -1 means to the left, 1 means to the right.
targetDir = sign(target.x - x);

//If the player is too close, tries to move away.
if (targetDistance < PS_CLOSE_RANGE)
{
    hdir = -targetDir;
}
//If the player is between PS_CLOSE_RANGE and PS_MED_RANGE
else if (targetDistance < PS_MED_RANGE)
{
    hdir = 0;
}
//Otherwise attempts to move towards the player.
else
{
    hdir = targetDir;
}

//Actually moves the tank.
hsp = hdir * moveSpeed;

//The tank always faces the playr. Used to tell the rockets which direction to go.
if (targetDir != 0)
{
    facing = targetDir;
    image_xscale = facing;
}

///Increments the timer and decides whether to fire.
if (fireCD > 0)
{
    fireCD--;
}

//If the tank is not moving, fireCD is low enough, and the player is within range, the tank fires.
if (fireCD <= 0) && (targetDistance < PS_MED_RANGE)
{
    //Creates the rocket, sets it to move towards the player.
    var _rocket = instance_create(x, y, projectile);
    _rocket.hdir = targetDir;
    
    //Play the sound effect.
    audio_play_sound(ps_snd_fire, 1, false);
    
    fireCD = PS_TANK_FIRE_CD;
    
}


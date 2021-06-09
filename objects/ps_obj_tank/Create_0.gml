/// @description Inheritance.
event_inherited();

///Object specific variables.

//The direction this object is moving.
hdir = 0;

//What direction this object is facing. Makes the sprite face the correct direction.
facing = 1;

//How fast the object moves.
moveSpeed = 3;

//Cooldown timer for the tank to fire. The tank can fire while fireCD <= 0 and the tank is not moving.
fireCD = PS_TANK_FIRE_CD;

//The tank is targetting the player and always knows where the player is.
//Since there is only one player object at a time I can just set it like this.
target = ps_obj_pinkSlime;

//The object that will be fired from the tank.
projectile = ps_obj_rocket;

//The distance between this object and the target.
targetDistance = distance_to_object(target);

//The direction the target is relative to this object. -1 means to the left, 1 means to the right.
targetDir = sign(target.x - x);


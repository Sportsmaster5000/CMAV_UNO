/// @description Inheritance.
event_inherited();

grav = .4;

///Initialize the building.

//Randomizes the building sprite.
image_index = irandom(sprite_get_number(sprite_index));

//Turns off animation.
image_speed = 0;

//The direction the building is rotation. Positive is clockwise, negative is counterclockwise, 0 is stationary.
rotation = 0;

//The speed the rotation is set to.
rotationSpeed = 1;

//Value is how many points the player gets from it. Later this should correllate to the height of the building.
value = 100;

//If the object is active the player can use it for points.
active = true;


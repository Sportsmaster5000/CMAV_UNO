/// @description Inherits from parent and initializes the player object.

event_inherited();

//Initializes starting variables to defaults. 
ps_pinkSlime_initialize();

///Initialize the timer.
timer = 0;

///level specific variables.
peopleEaten = 0;
foodQuota = PS_FOOD_QUOTA;

///Scales the player.
image_xscale = global.ps_playerSize * facing;
image_yscale = global.ps_playerSize;


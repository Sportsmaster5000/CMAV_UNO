/// @description Inheritance.
event_inherited();

///Makes the character attempt to flee from the player if they are within range.
if (distance_to_object(ps_obj_pinkSlime) < PS_VIEW_RANGE)
{
    hdir = sign(x - ps_obj_pinkSlime.x)
    
    //People will stop if moving would put them too close to the wall.
    hsp = hdir * 2;

    //makes sure the character is facing the right way.
    if (hdir != 0)
    {
        image_xscale = sign(hdir);
    }
}


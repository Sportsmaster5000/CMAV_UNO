/// @description If the player collides with an NPC, they are consumed.
ps_pinkSlime_eat_person(other);

image_xscale = global.ps_playerSize * facing;
image_yscale = global.ps_playerSize;

///If the player would expand into the PS_GROUND, moves them up a little.
if (position_meeting(x, y, ps_obj_block))
{
    y--;
}

///If the player has eaten enough people, goes to the next level.
if (peopleEaten >= foodQuota)
{
    ps_level_complete();
}


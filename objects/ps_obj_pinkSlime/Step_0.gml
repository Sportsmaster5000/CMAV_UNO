/// @description Controls the player
ps_pinkSlime_control();

///Animates the player.
ps_pinkSlime_animate();


///Inherits code.
event_inherited();


///Reduces player health every PS_HUNGER frames. If ps_hp is less than 0, the player dies.
if (timer % PS_HUNGER) == 0
{
    global.ps_hp--;
}

if (global.ps_hp < 0)
{
    room_goto(ps_room_pinkSlimeGameOver);
}

///increments timers, spawns new people, tanks, helicopters.

timer++;

//Spawns a new person to eat every PS_PERSON_SPAWN frames.
if ((timer % PS_PERSON_SPAWN) == 0)
{
    if (instance_number(ps_obj_civilian) < global.ps_level * PS_LEVEL_PEOPLE_SCALE)
    {
        ps_spawn_civilian();
    }
}

//Spawns a new tank ever TANK_SPAWN frames.
if ((timer % PS_TANK_SPAWN_CD) == 0)
{
    if (instance_number(ps_obj_tank) < floor(PS_TANK_CAP))
    {
        ps_spawn_enemy(ps_obj_tank);
    }
}

//Spawns a new helicopter every TANK_SPAWN frames.
if ((timer % PS_TANK_SPAWN_CD) == 0)
{
    if (instance_number(ps_obj_helicopter) < floor(PS_HELICOPTER_CAP))
    {
        ps_spawn_enemy(ps_obj_helicopter);
    }
}

//Decrements PS_INVINCIBILITY timer. The player is only vulnerable when their invinciblity is <= 0.
if (invincibility > 0)
{
    invincibility--;
}




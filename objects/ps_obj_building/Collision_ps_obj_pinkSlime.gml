/// @description If the player collides with a building, the building is destroyed and adds to the player's score.

if (active)
{
    //Sends the building flying.
    hsp += other.hsp * (global.ps_playerSize);
    vsp -= abs(other.hsp);
    global.ps_playerScore += value;
    collision = false;
    active = false;
    
    //Makes the building start spinning.
    rotation = -sign(((bbox_top + bbox_bottom)/2) - other.y);
    rotationSpeed = other.hsp;
    
    //Play the sound effect.
    audio_play_sound(ps_snd_explosion, 2, false);
}


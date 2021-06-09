/// @description Starts the timer. if global.time = 0 destroys itself instead.
if (global.time == 0)
{
    instance_destroy(self, true);
}

timeLeft = global.time * room_speed;


//Stops all sounds.
audio_stop_all();


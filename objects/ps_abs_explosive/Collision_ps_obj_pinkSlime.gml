/// @description Creates an explosion object, then destroys itself.

//Play the sound effect.
audio_play_sound(ps_snd_mine, 2, false);

instance_create(x, y, ps_obj_explosion);
instance_destroy();


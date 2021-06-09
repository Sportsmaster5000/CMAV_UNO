//Starts playing the game theme.
if (!audio_is_playing(ps_snd_mainTheme))
{
    audio_play_sound(ps_snd_mainTheme, 1, true);
}
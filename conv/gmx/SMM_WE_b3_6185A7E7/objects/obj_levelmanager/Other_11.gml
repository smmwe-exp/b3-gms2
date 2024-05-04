if (switchon == 0)
{
    switchon = 1
    alarm[1] = 1
    audio_stop_sound(scr_snd_switchsong())
    audio_play_sound(scr_snd_switchsong(), 1, true)
    audio_stop_sound(scr_snd_starman())
}


if (switchon == 1)
{
    switchon = 0
    audio_stop_sound(scr_snd_switchsong())
    pwarning = 0
    if instance_exists(obj_invincibility)
    {
        if (obj_invincibility.alarm[0] > -1)
        {
            obj_invincibility.alarm[2] = 2
            audio_play_sound(scr_snd_starman(), 99, true)
        }
        else
            alarm[0] = 2
    }
    else
        alarm[0] = 2
}


if (skidnow == 1)
    audio_stop_sound(snd_skid)
if (noisy == 1)
    audio_stop_sound(snd_swim)
if (floatnow == 1)
    audio_stop_sound(snd_spin)
if instance_exists(obj_shake_mario)
{
    with (obj_shake_mario)
        instance_destroy()
}


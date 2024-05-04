if ((global.apariencia == 0) || (global.apariencia == 1))
{
    jumping = 1
    hspeed = -1
    if (swimming == 0)
        vspeed = -4.4
    else
        vspeed = -2.2
}
else if (global.apariencia == 2)
{
    audio_play_sound(snd_hatch, 0, false)
    image_index = 1
    depth = -2
    alarm[1] = 16
}


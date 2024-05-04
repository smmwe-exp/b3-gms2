if (!outside_view())
{
    if ((global.apariencia == 0) || (global.apariencia == 1))
        audio_play_sound(snd_SMB3_magicbean, 0, false)
    else if (global.apariencia == 2)
        audio_play_sound(snd_magicbean, 0, false)
    if (direct == 1)
        instance_create((x + 14), (y + 5), obj_magic)
    else
        instance_create((x - 14), (y + 5), obj_magic)
}
image_speed = 0.09
alarm[1] = 70


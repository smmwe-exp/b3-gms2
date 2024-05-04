if (!audio_is_playing(scr_snd_switchsong()))
{
    if (global.onoffblock == 0)
    {
        if (global.apariencia == 0)
        {
            sprite1 = 510
            sprite2 = 511
            sprite3 = 512
        }
        else if (global.apariencia == 1)
        {
            sprite1 = 1231
            sprite2 = 1232
            sprite3 = 1233
        }
        else
        {
            sprite1 = 2021
            sprite2 = 2022
            sprite3 = 2023
        }
        if (velocidad == 0)
        {
            if (direct_t == 1)
                image_speed = -1
            else
                image_speed = 1
        }
        else if (direct_t == 1)
            image_speed = -2
        else
            image_speed = 2
    }
    else
    {
        if (global.apariencia == 0)
        {
            sprite1 = 507
            sprite2 = 508
            sprite3 = 509
        }
        else if (global.apariencia == 1)
        {
            sprite1 = 1228
            sprite2 = 1229
            sprite3 = 1230
        }
        else
        {
            sprite1 = 2018
            sprite2 = 2019
            sprite3 = 2020
        }
        if (velocidad == 0)
        {
            if (direct_t == 1)
                image_speed = 1
            else
                image_speed = -1
        }
        else if (direct_t == 1)
            image_speed = 2
        else
            image_speed = -2
    }
}
else
    image_speed = 0


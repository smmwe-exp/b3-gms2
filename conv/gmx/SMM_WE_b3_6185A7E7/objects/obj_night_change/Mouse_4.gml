if (obj_levelmanager.editor == 1)
{
    if (global.modo_noche == 0)
    {
        sprite_index = spr_change_moon
        image_speed = 0
        image_index = 0
        audio_play_sound(snd_change_night_day, 0, false)
        event_user(1)
    }
    else if (global.modo_noche == 1)
    {
        sprite_index = spr_change_sun
        image_speed = 0
        image_index = 0
        audio_play_sound(snd_change_night_day, 0, false)
        event_user(1)
    }
}


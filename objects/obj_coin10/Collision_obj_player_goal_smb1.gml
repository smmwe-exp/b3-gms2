if (image_speed == 0.15)
{
    if (global.apariencia == 2)
    {
        audio_stop_sound(snd_coin10)
        audio_play_sound(snd_coin10, 0, false)
    }
    else
    {
        audio_stop_sound(snd_SMB3_coin10)
        audio_play_sound(snd_SMB3_coin10, 0, false)
    }
    if (object_index == obj_coin50)
        global.coins += 50
    else if (object_index == obj_coin30)
        global.coins += 30
    else
        global.coins += 10
    vspeed = -3
    gravity = 0.2
    with (instance_create(x, y, obj_score))
    {
        event_user(0)
        visible = 0
    }
    if (global.apariencia != 0)
        instance_create((x + 8), y, obj_sparkles_coin)
    image_speed = 0.9
    alarm[0] = 30
}


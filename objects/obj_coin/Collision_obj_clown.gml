if (other.inmario == 1)
{
    audio_stop_sound(scr_snd_coin())
    audio_play_sound(scr_snd_coin(), 0, false)
    global.coins++
    with (instance_create(x, y, obj_score))
    {
        event_user(0)
        visible = 0
    }
    if ((global.apariencia != 0) && (global.apariencia != 4))
        instance_create(x, y, obj_sparkles_coin)
    instance_destroy()
}


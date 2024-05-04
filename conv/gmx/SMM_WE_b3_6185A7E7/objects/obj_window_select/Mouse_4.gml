if ((disabled == 0) && (os_type != os_android))
{
    audio_play_sound(snd_aceptar, 0, false)
    obj_window_select.active = 0
    active = 1
    with (obj_persistent)
    {
        if (other.value == 0)
        {
            global.w_scale = 1
            filter = 1
        }
        else if (other.value == 1)
        {
            global.w_scale = 2
            filter = 2
        }
        else if (other.value == 2)
        {
            global.w_scale = 3
            filter = 3
        }
        else if (other.value == 3)
        {
            global.w_scale = 4
            filter = 4
        }
        event_user(1)
    }
}


if (instance_exists(obj_mario_editor) && (press == 1))
{
    audio_stop_sound(snd_trayectoria)
    audio_play_sound(snd_trayectoria, 0, false)
    cal_x = (obj_creation_preview.x - __view_get( e__VW.XView, 0 ))
    cal_y = ((obj_creation_preview.y - 16) - __view_get( e__VW.YView, 0 ))
    with (instance_create((__view_get( e__VW.XView, 0 ) + cal_x), (__view_get( e__VW.YView, 0 ) + cal_y), obj_silbido))
    {
        follow_x = other.cal_x
        follow_y = other.cal_y
    }
    with (obj_mario_editor)
    {
        follow = 1
        follow_x = other.cal_x
        follow_y = other.cal_y
    }
    instance_destroy()
}


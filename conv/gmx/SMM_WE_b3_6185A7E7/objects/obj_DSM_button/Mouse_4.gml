if (ready == 0)
{
    ready = 1
    audio_play_sound(snd_aceptar, 0, false)
    if instance_exists(obj_castle_start)
    {
        with (obj_castle_start)
            image_speed = 0.25
    }
    __background_set( e__BG.Index, 0, bg_DSM_1 )
    __background_set( e__BG.Alpha, 0, 0 )
    image_index = 1
}


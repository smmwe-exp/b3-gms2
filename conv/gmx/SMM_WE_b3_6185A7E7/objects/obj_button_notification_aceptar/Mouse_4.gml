if (obj_input.new_texto != "")
{
    if ((global.etiqueta1 != "") || (global.etiqueta2 != ""))
    {
        if (!instance_exists(obj_load_image))
        {
            audio_play_sound(snd_aceptar, 0, false)
            if file_exists(((global.directorio + obj_input.new_texto) + ".swe"))
            {
                with (obj_toast)
                    instance_destroy()
                with (instance_create((__view_get( e__VW.XView, 0 ) + 134), (__view_get( e__VW.YView, 0 ) + 216), obj_toast))
                {
                    image_index = 5
                    large = 1
                    borrar = ((global.directorio + obj_input.new_texto) + ".swe")
                }
            }
            else
            {
                with (instance_create((__view_get( e__VW.XView, 0 ) + 357), (__view_get( e__VW.YView, 0 ) + 192), obj_load_image))
                {
                    pos = 1
                    sprite_index = spr_load_image_dark
                }
                global.instance_deactivate = 0
                alarm[0] = 12
            }
        }
    }
    else
        audio_play_sound(snd_wrong, 0, false)
}
else if (obj_input.new_texto == "")
{
    audio_play_sound(snd_wrong, 0, false)
    with (obj_toast)
        instance_destroy()
    with (instance_create((__view_get( e__VW.XView, 0 ) + 134), (__view_get( e__VW.YView, 0 ) + 216), obj_toast))
        image_index = 3
}


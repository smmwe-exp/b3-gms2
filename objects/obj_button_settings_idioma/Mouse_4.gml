audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (global.idioma == 0)
{
    global.idioma = 1
    image_index = 1
    if instance_exists(obj_creator_jugar_editar)
    {
        with (obj_creator_jugar_editar)
            sprite_index = spr_creator_play_english
    }
}
else if (global.idioma == 1)
{
    global.idioma = 0
    image_index = 0
    if instance_exists(obj_creator_jugar_editar)
    {
        with (obj_creator_jugar_editar)
            sprite_index = spr_creator_play
    }
}


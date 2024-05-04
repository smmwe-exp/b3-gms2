if ((!instance_exists(obj_settings_panel)) && ((canpress == 0) && (image_index == 0)))
{
    image_index = 1
    if ((sprite_index == spr_pausa_continuar) || (sprite_index == spr_pausa_continuar_en))
        audio_play_sound(snd_pausa, 0, false)
    else if (sprite_index == spr_pausa_volver)
        audio_play_sound(snd_volver_a_empezar, 0, false)
    if (sprite_index == spr_pausa_salir)
        audio_play_sound(snd_salir_del_nivel, 0, false)
    alarm[1] = 6
}


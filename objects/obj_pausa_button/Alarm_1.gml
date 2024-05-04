if (sprite_index == spr_pausa_continuar)
{
    with (obj_menu_pausa)
        event_user(0)
}
else if (sprite_index == spr_pausa_volver)
{
    with (obj_menu_pausa)
        event_user(1)
}
else if (sprite_index == spr_pausa_salir)
{
    modo_juego = global.modojuego
    global.keys = 0
    scr_init_globals()
    audio_stop_sound(snd_dead)
    audio_stop_sound(snd_SMB3_dead)
    audio_stop_sound(scr_snd_starman())
    audio_stop_sound(scr_snd_clown_damage())
    if (modo_juego == 0)
        room_goto(rm_guardabot)
    else if (modo_juego == 1)
    {
        lives = 10
        room_goto(rm_desafio_super_mario)
    }
    else if (modo_juego == 2)
    {
        lives = 100
        room_goto(rm_super_experto)
    }
}


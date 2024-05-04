if (mouse_check_button_pressed(1) && (visible == 1))
{
    audio_play_sound(snd_inventory, 0, false)
    scr_init_globals()
    audio_stop_sound(snd_desafio_10_marios)
    audio_stop_sound(snd_super_experto)
    audio_stop_sound(snd_guardabot)
    room_goto(rm_title)
}


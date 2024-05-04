if ((inmario == 1) && keyboard_check(global.lanzar_agarrar))
{
    carga = 1
    other.visible = 1
    sprite_index = s_clown_evil
    if (audio_charge == 0)
    {
        audio_play_sound(scr_snd_clown_fire_charge(), 0, false)
        audio_charge = 1
    }
}


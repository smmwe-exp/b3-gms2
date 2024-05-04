if (canpress == 0)
{
    if (effect_hover == 0)
    {
        audio_stop_sound(snd_button_pausa_move)
        audio_play_sound(snd_button_pausa_move, 0, false)
    }
    effect_hover = 1
}


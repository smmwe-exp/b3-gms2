if (index != global.autoavance)
{
    audio_play_sound(snd_aceptar, 0, false)
    global.autoavance = index
    with (obj_button_autoavance)
        image_index = 0
    image_index = 1
}
else
{
    audio_stop_sound(snd_wrong)
    audio_play_sound(snd_wrong, 0, false)
}


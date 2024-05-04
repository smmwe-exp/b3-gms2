audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (global.sonidos == 1)
{
    global.sonidos = 0
    audio_master_gain(0)
    image_index = 1
}
else
{
    global.sonidos = 1
    audio_master_gain(1)
    image_index = 0
}


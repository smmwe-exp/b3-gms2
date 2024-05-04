audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (global.sm4j_style == 0)
{
    global.sm4j_style = 1
    image_index = 0
}
else
{
    global.sm4j_style = 0
    image_index = 1
}


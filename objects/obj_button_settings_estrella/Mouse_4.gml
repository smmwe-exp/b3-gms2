audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (global.effect_star == 1)
{
    global.effect_star = 0
    image_index = 1
}
else
{
    global.effect_star = 1
    image_index = 0
}


if (global.apariencia != 2)
{
    audio_stop_sound(snd_SMB3_estalactita_fall)
    audio_play_sound(snd_SMB3_estalactita_fall, 0, false)
}
else if (global.apariencia == 2)
{
    audio_stop_sound(snd_estalactita_fall)
    audio_play_sound(snd_estalactita_fall, 0, false)
}
gravity = 0.15
rot = 0
rotacion = 0


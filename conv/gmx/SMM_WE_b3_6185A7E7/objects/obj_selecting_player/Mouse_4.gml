obj_selecting_player.active = 0
active = 1
audio_stop_sound(snd_mario_voice)
audio_stop_sound(snd_mario_voice2)
audio_stop_sound(snd_luigi_voice)
audio_stop_sound(snd_luigi_voice2)
audio_stop_sound(snd_toad_voice)
audio_stop_sound(snd_toad_voice2)
audio_stop_sound(snd_letsgo_toadette)
audio_stop_sound(snd_toadette_voice)
if (value == 0)
{
    global.jugador = 0
    audio_play_sound(choose(194, 195, 195, 194), 0, false)
}
else if (value == 1)
{
    global.jugador = 1
    audio_play_sound(choose(196, 197, 196, 197), 0, false)
}
else if (value == 2)
{
    global.jugador = 2
    audio_play_sound(choose(199, 199, 198, 198), 0, false)
}
else if (value == 3)
{
    audio_play_sound(choose(204, 200, 200, 204), 0, false)
    global.jugador = 3
}


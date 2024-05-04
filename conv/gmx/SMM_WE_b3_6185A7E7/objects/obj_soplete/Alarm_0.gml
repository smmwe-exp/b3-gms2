if (global.soplete_fire == 0)
{
    sprite_index = s_soplete_start
    image_speed = 0.5
    invisible = 0
    if ((!outside_view()) && (!audio_is_playing(snd_soplete)))
        audio_play_sound(snd_soplete, 0, false)
}
else
    alarm[0] = 1


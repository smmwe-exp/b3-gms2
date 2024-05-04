if ((!audio_is_playing(snd_tread_boss)) && instance_exists(obj_mario))
{
    if (((obj_mario.caped == 1) && (sprite_index == spr_cap_spinjump)) || ((obj_mario.stompstyle == 1) && (sprite_index == spr_cap_spinjump)))
    {
        audio_play_sound(snd_tread_boss, 0, false)
        with (other.id)
            firehitpoints--
    }
}


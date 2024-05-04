if (other.hardness < 99)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (other.id)
        event_user(0)
}


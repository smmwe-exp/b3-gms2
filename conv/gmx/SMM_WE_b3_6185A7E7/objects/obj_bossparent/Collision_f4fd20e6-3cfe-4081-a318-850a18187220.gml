if (hardness < 2)
{
    audio_play_sound(snd_tread_boss, 0, false)
    firehitpoints--
    if (firehitpoints == 0)
    {
        hitpoints = 1
        event_user(1)
    }
    else
    {
        hardness = 99
        inv = 4
    }
    with (other.id)
        event_user(0)
}


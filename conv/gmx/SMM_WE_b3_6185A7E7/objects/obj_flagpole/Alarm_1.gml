if (global.timer == 0)
    alarm[2] = 1
else
{
    if (global.timer > 4)
    {
        alarm[1] = 1
        score += 250
        global.timer -= 8
    }
    else if ((global.timer < 5) && (global.timer > 0))
    {
        alarm[1] = 2
        score += 50
        global.timer--
    }
    if (ready3 == 0)
    {
        if (global.timer > 0)
        {
            ready3 = 1
            audio_play_sound(snd_count, 0, false)
        }
        else
        {
            ready3 = 2
            audio_play_sound(snd_countend, 0, false)
        }
    }
    else if ((global.timer < 1) && (ready3 == 1))
    {
        ready3 = 2
        audio_play_sound(snd_countend, 0, false)
    }
}


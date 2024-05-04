if instance_exists(obj_mario)
{
    if (((abs(obj_mario.hspeed) > 2.1) && ((obj_mario.state == 1) && (global.apariencia != 3))) || (((abs(obj_mario.hspeed) > 1.6) && ((obj_mario.state == 1) && (global.apariencia == 3))) || (((obj_mario.stompstyle == 1) && ((obj_mario.canfly == 1) && (abs(obj_mario.hspeed) > 2.1))) || ((global.apariencia == 3) && ((abs(obj_mario.hspeed) > 1.8) && (obj_mario.state == 2))))))
    {
        if (pmeter < 6)
            pmeter++
    }
    else if ((pmeter > 0) && (slowdown == 2))
        pmeter--
    slowdown++
    if (slowdown == 3)
        slowdown = 0
}
else if (pmeter > 0)
    pmeter--
if (pmeter == 6)
{
    if ((global.apariencia == 1) && instance_exists(obj_mario))
        audio_play_sound(snd_pmeter, 1, true)
    alarm[8] = 300
    alarm[9] = 7
}
else
    alarm[7] = 8


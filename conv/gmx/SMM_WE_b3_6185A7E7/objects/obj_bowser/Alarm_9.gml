if (disup_cont == 5)
{
    disup_cont = 0
    sprite_index = spr_bowser_walk
    image_speed = 0.08
    alarm[0] = 2
    alarm[1] = 2
    alarm[4] = -1
    alarm[5] = 2
    alarm[3] = 20
    alarm[7] = choose(240, 480, 480, 520)
}
else
{
    audio_play_sound(snd_flames, 0, false)
    if (direct == 1)
    {
        with (instance_create((x + 21), (y - 23), obj_bowserfire_up))
        {
            if (other.disup_cont == 0)
                hspeed = (0.8 * other.direct)
            else if (other.disup_cont == 1)
                hspeed = (0.7 * other.direct)
            else if (other.disup_cont == 2)
                hspeed = (0.6 * other.direct)
            else if (other.disup_cont == 3)
                hspeed = (0.5 * other.direct)
            else if (other.disup_cont == 4)
            {
                hspeed = (0.4 * other.direct)
                last = 1
                pos = (other.x + 224)
            }
            direct = other.direct
        }
    }
    else
    {
        with (instance_create((x - 21), (y - 23), obj_bowserfire_up))
        {
            if (other.disup_cont == 0)
            {
                hspeed = (0.8 * other.direct)
                id_cont = 1
            }
            else if (other.disup_cont == 1)
            {
                hspeed = (0.7 * other.direct)
                id_cont = 2
            }
            else if (other.disup_cont == 2)
            {
                hspeed = (0.6 * other.direct)
                id_cont = 3
            }
            else if (other.disup_cont == 3)
            {
                hspeed = (0.5 * other.direct)
                id_cont = 4
            }
            else if (other.disup_cont == 4)
            {
                hspeed = (0.4 * other.direct)
                last = 1
                pos = (other.x - 224)
            }
            direct = other.direct
        }
    }
    disup_cont++
    alarm[7] = 10
}


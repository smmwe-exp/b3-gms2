if instance_exists(obj_mario)
{
    if (gravity == 0)
    {
        if (((obj_mario.x < x) && (direct == 1)) || ((obj_mario.x > x) && (direct == -1)))
            alarm[2] = 1
        else if (big_jump == 1)
        {
            big_jump = 0
            alarm[1] = -1
            alarm[4] = -1
            alarm[10] = -1
            alarm[6] = 20
        }
        else
        {
            jump = choose(0, 1, 2, 3, 4)
            if (global.apariencia == 1)
            {
                if (swimming == 1)
                {
                    if ((jump == 2) || (jump == 4))
                        vspeed = -2
                    else
                        vspeed = -1.5
                }
                else if ((jump == 2) || (jump == 4))
                    vspeed = -4
                else
                    vspeed = -2.5
                y--
                if instance_exists(obj_mario)
                {
                    if (obj_mario.x < x)
                    {
                        hspeed = 0.25
                        direct = -1
                    }
                    else if (obj_mario.x > x)
                    {
                        hspeed = 0.25
                        direct = 1
                    }
                }
                alarm[0] = 6
            }
            else if (global.apariencia == 2)
            {
                jump = choose(0, 1, 2, 3, 4)
                if (swimming == 1)
                {
                    if ((jump == 2) || (jump == 4))
                        vspeed = -3
                    else
                        vspeed = -2.5
                }
                else if ((jump == 2) || (jump == 4))
                    vspeed = -4.5
                else
                    vspeed = -3.5
                y--
                alarm[3] = 180
            }
        }
    }
    else if (global.apariencia == 1)
        alarm[0] = 6
    else if (global.apariencia == 2)
        alarm[3] = 6
}
else
    alarm[3] = 4


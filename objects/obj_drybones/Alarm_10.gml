if (wings == 0)
{
    if (hspeed == 0)
    {
        if (direct == -1)
        {
            if (swimming == 1)
                hspeed = -0.3
            else
                hspeed = -0.5
        }
        else if (direct == 1)
        {
            if (swimming == 1)
                hspeed = 0.3
            else
                hspeed = 0.5
        }
    }
}
else
{
    vspeed = 0.5
    if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
        direct = -1
    else
        direct = 1
}


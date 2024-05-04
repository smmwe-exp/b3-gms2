prevhspeed = hspeed
event_inherited()
if (charge == 1)
{
    if (gravity == 0)
    {
        if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
        {
            hspeed -= 0.1
            if (hspeed < -2.2)
                hspeed = -2.2
        }
        else
        {
            hspeed += 0.1
            if (hspeed > 2.2)
                hspeed = 2.2
        }
    }
}


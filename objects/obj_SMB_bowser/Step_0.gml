if instance_exists(obj_mario)
{
    if (obj_mario.x > x)
    {
        if ((sprite_index == spr_SMB_bowser) && (vspeed == 0))
        {
            hspeed = 0.45
            direct = 1
        }
        else
        {
            if (prevhspeed == 0)
                prevhspeed = hspeed
            hspeed = 0
        }
    }
    else
    {
        direct = -1
        if (sprite_index == spr_SMB_bowser)
        {
            if (prevhspeed != 0)
            {
                hspeed = prevhspeed
                prevhspeed = 0
            }
            else if (hspeed > 0)
            {
                hspeed = 0.3
                if (x > xstart)
                    hspeed = (-hspeed)
            }
            else if (hspeed < 0)
            {
                hspeed = -0.3
                if (x < (xstart - 144))
                    hspeed = (-hspeed)
            }
        }
        else
        {
            if (prevhspeed == 0)
                prevhspeed = hspeed
            hspeed = 0
        }
    }
}
event_inherited()
if (gravity > 0)
    gravity = 0.075
else if (jumping == 1)
{
    jumping = 0
    alarm[0] = 90
}
if (cooldown > 0)
    cooldown--


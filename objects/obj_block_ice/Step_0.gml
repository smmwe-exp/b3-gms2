var col_mario;
col_mario = collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_mario, 1, 0)
if instance_exists(obj_mario)
{
    if (col_mario && ((global.powerup == -77) && ((global.yoshi == 0) && (obj_mario.can_break_block == 1))))
    {
        alarm[0] = 1
        with (obj_mario)
        {
            jumpnow = 2
            state = 2
            alarm[4] = 15
            if (isswim == 1)
                vspeed = -2
            else
                vspeed = -4
            y--
        }
    }
}
if (wings == 1)
{
    depth = -7
    wings_anim += 0.12
    if (y > (ystart + 14))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.085
    }
    else if (y < (ystart - 14))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.085
    }
    if (x < (xstart - 40))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.085
    }
    else if (x > (xstart + 40))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.085
    }
}


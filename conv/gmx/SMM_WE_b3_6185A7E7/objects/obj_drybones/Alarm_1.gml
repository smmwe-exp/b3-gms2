image_speed = 0.125
if (christmas == 1)
    sprite_index = spr_drybones_christmas
else
    sprite_index = spr_drybones
if (wings == 0)
{
    if (direct == 1)
    {
        if (swimming == 1)
            hspeed = 0.3
        else
            hspeed = 0.5
    }
    else if (swimming == 1)
        hspeed = -0.3
    else
        hspeed = -0.5
}


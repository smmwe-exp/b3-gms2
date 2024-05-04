if (hspeed > 0)
    direct = 1
else
    direct = -1
if instance_exists(obj_mario_transform2)
    depth = -5
else
    depth = -7
if (decender == 1)
{
    vspeed += 0.05
    if (global.apariencia == 0)
    {
        if (y >= (ystart + 16))
        {
            decender = 0
            vspeed = 0
        }
    }
    else if (global.apariencia == 1)
    {
        if (y >= (ystart + 16))
        {
            decender = 0
            vspeed = 0
        }
    }
    else if (global.apariencia == 2)
    {
        if (y >= (ystart + 10))
        {
            decender = 0
            vspeed = 0
        }
    }
}


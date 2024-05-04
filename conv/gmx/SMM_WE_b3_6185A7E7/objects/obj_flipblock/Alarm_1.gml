vspeed = 0
y = ystart
if ((global.apariencia == 0) || ((global.apariencia == 1) || ((global.apariencia == 3) || (global.apariencia == 4))))
    ready = 0
else if (global.apariencia == 2)
{
    image_speed = 0.15
    flips = 8
    with (mysolid)
        instance_destroy()
}


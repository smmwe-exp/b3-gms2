if (hspeed != 0)
{
    image_speed = 0.2
    alarm[11] = 30
    if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
        hspeed = -0.6
    else
        hspeed = 0.6
}


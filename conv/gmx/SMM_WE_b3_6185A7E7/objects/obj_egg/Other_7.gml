if ((global.apariencia == 0) || (global.apariencia == 1))
{
    if (ready == 1)
    {
        ready = 0
        image_speed = 0
        image_index = 1
        if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
            alarm[0] = 10
        else
            alarm[1] = 10
    }
}


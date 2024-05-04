if (global.apariencia == 2)
{
    if (flips > 0)
        flips--
    else if (!place_meeting(x, y, obj_mario))
    {
        image_speed = 0
        image_index = 0
        ready = 0
        mysolid = instance_create(x, y, obj_solid)
        event_user(10)
    }
}


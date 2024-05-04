if ((y > (ystart - 20)) && (vspeed > 0))
{
    with (instance_create(x, (ystart - 20), obj_score))
        event_user(0)
    if ((global.apariencia != 0) && (global.apariencia != 4))
        instance_create(x, (ystart - 20), obj_sparkles_coin)
    instance_destroy()
}


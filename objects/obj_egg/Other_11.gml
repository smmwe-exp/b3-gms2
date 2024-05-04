if ((global.apariencia == 0) || (global.apariencia == 1))
{
    with (instance_create(x, y, obj_getshoe))
    {
        dir = other.direct
        if (other.object_index == obj_egg_red)
            bota = 2
    }
    event_user(7)
}


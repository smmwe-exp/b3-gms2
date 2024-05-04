ready = 1
if (global.modo_noche == 0)
{
    if instance_exists(obj_rotten)
    {
        with (obj_rotten)
        {
            instance_create(x, y, obj_1up)
            instance_destroy()
        }
    }
    if instance_exists(obj_happymoon)
    {
        with (obj_happymoon)
        {
            instance_create(x, y, obj_angrysun)
            instance_destroy()
        }
    }
    if instance_exists(obj_restart_edition)
    {
        with (obj_restart_edition)
        {
            if (obj == object_get_name(obj_rotten))
                obj = object_get_name(obj_1up)
            else if (obj == object_get_name(obj_happymoon))
                obj = object_get_name(obj_angrysun)
        }
    }
}
else
{
    if instance_exists(obj_1up)
    {
        with (obj_1up)
        {
            instance_create(x, y, obj_rotten)
            instance_destroy()
        }
    }
    if instance_exists(obj_angrysun)
    {
        with (obj_angrysun)
        {
            instance_create(x, y, obj_happymoon)
            instance_destroy()
        }
    }
    if instance_exists(obj_restart_edition)
    {
        with (obj_restart_edition)
        {
            if (obj == object_get_name(obj_1up))
                obj = object_get_name(obj_rotten)
            else if (obj == object_get_name(obj_angrysun))
                obj = object_get_name(obj_happymoon)
        }
    }
}
alarm[1] = 5


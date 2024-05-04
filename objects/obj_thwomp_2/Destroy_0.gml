if (wings == 1)
{
    wings = 0
    with (instance_create((x - 19), (y - 26), obj_wings_dead))
        direct = 1
    with (instance_create((x + 19), (y - 26), obj_wings_dead))
        direct = -1
    with (w_wings)
        instance_destroy()
    w_wings = 0
}


if (wings == 1)
{
    if (direct == 1)
    {
        with (instance_create((x - 8), (y + 9), obj_wings_dead))
            direct = 1
    }
    else
    {
        with (instance_create((x + 8), (y + 9), obj_wings_dead))
            direct = -1
    }
}


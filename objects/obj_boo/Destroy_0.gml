if (wings == 1)
{
    wings = 0
    with (instance_create((w_wings.x - 10), (w_wings.y + 12), obj_wings_dead))
        direct = other.direct
    with (w_wings)
        instance_destroy()
    w_wings = 0
}
if (obj_levelmanager.editor == 1)
{
    if (my_apilar != obj_lighting)
    {
        with (my_apilar)
            instance_destroy()
    }
}


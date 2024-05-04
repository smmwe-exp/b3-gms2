if ((global.apariencia == 1) || (global.apariencia == 0))
{
    vspeed = -3
    y--
}
else if (global.apariencia == 2)
{
    with (instance_create((x - 8), (y - 2), obj_galoomba_hold2))
    {
        direct = other.direct
        vspeed = -3
    }
}
instance_destroy()


if (held == 0)
{
    with (instance_create(x, y, obj_galoomba2))
    {
        hspeed = (0.5 * sign(other.direct))
        key = other.key
        if (other.gravity == 0)
            vspeed = -2
    }
    instance_destroy()
}
else
{
    alarm[2] = 540
    alarm[1] = 600
}


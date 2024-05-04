if (gravity > 0)
{
    alarm[1] = 1
    exit
}
else
{
    with (instance_create(x, y, returnobj))
        vspeed = -3
    instance_destroy()
}


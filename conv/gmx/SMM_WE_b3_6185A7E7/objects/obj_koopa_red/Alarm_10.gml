if (wings == 0)
{
    if (hspeed == 0)
    {
        if (direct == 1)
            hspeed = 0.5
        else
            hspeed = -0.5
    }
}
else if ((wings == 1) && (paracaidas == 0))
{
    vspeed = 0.5
    if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
        direct = -1
    else
        direct = 1
}


if ((wings == 1) && (paracaidas == 0))
{
    hspeed = -0.6
    vspeed = -0.5
}
else if (paracaidas == 1)
    hspeed = -0.6
if (paracaidas == 0)
{
    if (wings == 1)
    {
        hspeed = -0.6
        vspeed = -0.5
    }
    else if (swimming == 1)
        hspeed = 0.5
    else
        hspeed = 1
}


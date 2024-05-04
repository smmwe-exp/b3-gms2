if ((wings == 1) && (paracaidas == 0))
{
    hspeed = -0.6
    vspeed = -0.5
}
else if (paracaidas == 1)
    hspeed = -0.6
else if (paracaidas == 0)
{
    if ((global.modo_noche == 1) && (global.bg_level == "ground"))
    {
        charge = 1
        image_speed = 0.35
        if (wings == 1)
        {
            hspeed = -0.6
            vspeed = -0.5
        }
    }
    else if (wings == 1)
    {
        hspeed = -0.6
        vspeed = -0.5
    }
    else if (swimming == 1)
        hspeed = 0.5
    else
        hspeed = 1
}


if ((wings == 1) && (paracaidas == 0))
{
    hspeed = -0.6
    vspeed = -0.5
}
else if (paracaidas == 1)
    hspeed = -0.6
else if (paracaidas == 0)
{
    if (wings == 1)
    {
        hspeed = -0.6
        vspeed = -0.5
    }
    else if (swimming == 1)
    {
        if (global.modo_noche == 1)
        {
            if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
                hspeed = 0.5
            else
                hspeed = -0.5
        }
        else
            hspeed = 0.5
    }
    else if (global.modo_noche == 1)
    {
        if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
            hspeed = 1
        else
            hspeed = -1
    }
    else
        hspeed = 1
}


if (hspeed == 0)
{
    if (global.bg_level == "underwater")
    {
        if (direct == 1)
            hspeed = 0.3
        else
            hspeed = -0.3
    }
    else if (direct == 1)
        hspeed = 0.5
    else
        hspeed = -0.5
}


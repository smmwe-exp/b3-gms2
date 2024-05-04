if ((object_index != obj_mushroom_platform_res) && (object_index != obj_semisolid_platform1))
{
    if (expand == 1)
    {
        s_scalex += 0.1
        s_scaley += 0.1
        if (s_scalex > 1.4)
            expand = 2
    }
    else if (expand == 2)
    {
        s_scalex -= 0.1
        s_scaley -= 0.1
        if (s_scalex < 1)
        {
            expand = 0
            s_scalex = 1
            s_scaley = 1
        }
    }
    if (expand2 == 1)
    {
        s_scalex += 0.1
        s_scaley += 0.1
        if (s_scalex > 1.1)
        {
            s_scalex = 1.1
            s_scaley = 1.1
        }
    }
    else if (expand2 == 2)
    {
        s_scalex -= 0.1
        s_scaley -= 0.1
        if (s_scalex < 1)
        {
            expand2 = 0
            s_scalex = 1
            s_scaley = 1
        }
    }
    if (expand3 == 1)
    {
        s_scalex -= 0.2
        s_scaley -= 0.2
        if (s_scalex < 0.8)
            expand3 = 2
    }
    else if (expand3 == 2)
    {
        s_scalex += 0.2
        s_scaley += 0.2
        if (s_scalex > 1)
        {
            expand3 = 0
            s_scalex = 1
            s_scaley = 1
        }
    }
}


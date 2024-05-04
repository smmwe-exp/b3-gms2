event_inherited()
if ((wings == 1) && (paracaidas == 0))
{
    if (jumping > 0)
    {
        if (jumping > 3)
            anim += 0.25
        else
            anim += 0.15
    }
    else
        anim = 0
}


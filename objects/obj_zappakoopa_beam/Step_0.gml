alpha -= 0.016
radius -= 0.16
if ((radius < 0.16) && (beam == 0))
{
    beam = 1
    with (parent)
        alarm[4] = 1
    instance_destroy()
}


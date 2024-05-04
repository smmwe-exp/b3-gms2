ready = 3
if (direct_t == 1)
{
    if (swimming == 1)
        vspeed = -0.5
    else
        vspeed = -1
}
else if (direct_t == 2)
{
    if (swimming == 1)
        hspeed = 0.5
    else
        hspeed = 1
}
else if (direct_t == 3)
{
    if (swimming == 1)
        hspeed = -0.5
    else
        hspeed = -1
}
image_index = 0
image_xscale = 1


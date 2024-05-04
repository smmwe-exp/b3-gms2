if (vspeed == 0)
{
    if (sprite_index != spr_1uppts)
        instance_destroy()
    else
    {
        fade += 0.05
        if (fade > 1)
            instance_destroy()
    }
}
scale += 0.05
if (scale > 1)
    scale = 1
if (y < (__view_get( e__VW.YView, 0 ) + 32))
    y = (__view_get( e__VW.YView, 0 ) + 32)


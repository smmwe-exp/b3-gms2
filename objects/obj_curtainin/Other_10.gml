if (fallow == 0)
{
    x = (__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2))
    y = (__view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 2))
}
if (listo == 1)
    scale += 6
if (scale > 300)
{
    if instance_exists(obj_mario)
    {
        with (obj_mario)
            disablecontrols = 0
    }
    instance_destroy()
}


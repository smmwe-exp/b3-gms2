if ((x > (__view_get( e__VW.XView, 0 ) - 32)) && (x < ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) + 32)))
{
    if instance_exists(obj_lava_water)
    {
        if (obj_lava_water.y > (ystart + 16))
        {
            visible = 1
            vspeed = -4
            alarm[2] = 10
        }
        else
            alarm[1] = 10
    }
    else
    {
        visible = 1
        vspeed = -4
        alarm[2] = 10
    }
}
else
    alarm[1] = 10


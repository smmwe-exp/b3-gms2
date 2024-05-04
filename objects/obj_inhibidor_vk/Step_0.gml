if instance_exists(obj_d_pad)
{
    x = ((__view_get( e__VW.XView, 0 ) + obj_d_pad.pad_x) + obj_d_pad.pad_movex)
    y = ((__view_get( e__VW.YView, 0 ) + obj_d_pad.pad_y) + obj_d_pad.pad_movey)
}
else
{
    x = __view_get( e__VW.XView, 0 )
    y = (__view_get( e__VW.YView, 0 ) + 127)
}


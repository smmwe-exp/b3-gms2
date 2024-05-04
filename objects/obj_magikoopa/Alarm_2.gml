var semisolid;
if (!instance_exists(obj_mario))
{
    alarm[2] = 1
    exit
}
else if ((obj_mario.x > xmin) && (obj_mario.x < xmax))
{
    x = ((floor((random_range((__view_get( e__VW.XView, 0 ) + 16), ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 16)) / 16)) * 16) + 8)
    y = (floor((random_range((__view_get( e__VW.YView, 0 ) + 16), ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) - 16)) / 16)) * 16)
    semisolid = collision_rectangle(x, bbox_bottom, x, (bbox_bottom + 2), obj_solidtop, 0, 1)
    if (semisolid && ((ready == 1) && ((!tile_layer_find(9, (x - 8), y)) && ((!tile_layer_find(9, (x + 7), y)) && ((!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 1)) && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_modelbgo, 0, 1)))))))
    {
        y = (semisolid.bbox_top - 16)
        ready = 2
    }
    else
        alarm[2] = 1
}
else
    alarm[2] = 1


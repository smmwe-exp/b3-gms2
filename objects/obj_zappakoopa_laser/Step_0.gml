if (!instance_exists(parent))
{
    instance_destroy()
    exit
}
if (beam == 0)
{
    if (parent.xscale > 0)
    {
        if ((collision_point(x, y, obj_solid, 0, 0) || collision_point(x, y, obj_slopeparent, 1, 0)) || (x > ((__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )) + 16)))
        {
            move_snap(4, 1)
            beam = 1
            alarm[0] = 60
        }
        else
        {
            x += 4
            length += 4
        }
    }
    else if (parent.xscale < 0)
    {
        if ((collision_point(x, y, obj_solid, 0, 0) || collision_point(x, y, obj_slopeparent, 1, 0)) || (x < (__view_get( e__VW.XView, view_current ) - 16)))
        {
            move_snap(4, 1)
            beam = 1
            alarm[0] = 60
        }
        else
        {
            x -= 4
            length -= 4
        }
    }
}
player = collision_rectangle(xstart, (y - 4), (xstart + length), (y + 4), obj_mario, 0, 0)
if player
{
    with (player)
        event_user(0)
}


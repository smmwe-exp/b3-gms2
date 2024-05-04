var col_spring_land;
event_user(3)
if (fall == 1)
    event_user(4)
if (readys == 1)
{
    hspeed = 0
    vspeed = 0
    gravity = 0
}
if (gravity == 0)
{
    col_spring_land = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_spring_land, 0, 0)
    if ((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 0, 0))
    {
        hspeed = 0
        gravity = 0
        image_speed = 1
    }
    else if ((hspeed > 0) && col_spring_land)
    {
        can_walk = 1
        alarm[4] = 20
        vspeed = -2
        hspeed = -4
        with (col_spring_land)
            event_user(1)
    }
}


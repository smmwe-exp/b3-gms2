var muncher;
if ((vspeed > 0) && (bbox_bottom < (other.yprevious + 5)))
{
    if (other.vspeed == 0)
    {
        with (obj_mario)
        {
            instance_create(x, y, obj_deadmario)
            instance_destroy()
        }
    }
}
else if (((global.yoshi > 0) && ((other.y < (y - 28)) && (other.y > (y - 32)))) || ((other.invincible == 1) && ((other.y < (y - 29)) && (other.y > (y - 32)))))
{
}
else
{
    with (other.id)
    {
        muncher = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_muncher, 1, 0)
        if (muncher && instance_exists(obj_helmet))
            exit
        else
            event_user(0)
    }
}


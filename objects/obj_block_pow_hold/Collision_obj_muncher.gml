if (explode == 1)
{
    with (other.id)
    {
        dead_h = 1
        event_user(0)
    }
    event_user(6)
    instance_destroy()
}
else if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && (other.vspeed >= 0))
{
    if (collision_rectangle(bbox_left, (bbox_top - 5), bbox_right, (bbox_top + 4), other.id, 0, 0) && (other.y < (y - 10)))
        other.y = ceil((bbox_top - 16))
}


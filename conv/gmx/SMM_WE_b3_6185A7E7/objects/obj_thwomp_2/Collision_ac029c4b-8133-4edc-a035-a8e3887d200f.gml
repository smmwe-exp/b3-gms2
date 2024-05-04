if (collision_rectangle((bbox_left + 4), (bbox_top + 4), (bbox_right - 4), (bbox_bottom - 4), other.object_index, 0, 0) && ((ready == 1) && ((direct_t == 1) && ((y < other.y) && (other.held == 0)))))
{
    with (other.id)
        event_user(0)
}
else if ((ready == 1) && ((direct_t == 2) && (other.held == 0)))
{
    with (other.id)
        event_user(0)
}
else if ((ready == 1) && ((direct_t == 2) && (other.held == 0)))
{
    with (other.id)
        event_user(0)
}


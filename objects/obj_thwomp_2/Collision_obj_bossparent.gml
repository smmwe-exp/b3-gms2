if (collision_rectangle((bbox_left + 4), (bbox_top + 4), (bbox_right - 4), (bbox_bottom - 4), other.object_index, 0, 0) && ((ready == 1) && ((obj_levelmanager.editor == 0) && (y < other.y))))
{
    with (other.id)
        event_user(0)
}


with (other.id)
{
    with (obj_parent_resource)
    {
        if ((visible == 1) && (alarm[0] == -1))
            event_perform(13, 0)
    }
    with (obj_mario_editor)
    {
        if ((visible == 1) && (alarm[0] == -1))
            event_perform(13, 0)
    }
}


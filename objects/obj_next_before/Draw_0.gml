if instance_exists(obj_panel_expand)
{
    if (image_index == 0)
    {
        if (obj_panel_expand.value != 1)
            draw_self()
    }
    else if (obj_panel_expand.value != 12)
        draw_self()
}


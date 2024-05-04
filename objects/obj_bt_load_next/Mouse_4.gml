if (image_index == 0)
{
    audio_stop_sound(snd_add_wings)
    audio_play_sound(snd_add_wings, 0, false)
    if instance_exists(obj_panel_list)
    {
        obj_panel_list.pos = 47
        with (obj_list_item)
            instance_destroy()
        if (obj_panel_list.list_post == 1)
        {
            with (obj_panel_list)
                event_user(1)
        }
        else if (obj_panel_list.list_post == 2)
        {
            with (obj_panel_list)
                event_user(2)
        }
        else if (obj_panel_list.list_post == 3)
        {
            with (obj_panel_list)
                event_user(3)
        }
        else if (obj_panel_list.list_post == 4)
        {
            with (obj_panel_list)
                event_user(4)
        }
    }
}


if ((!instance_exists(obj_toast)) && (!instance_exists(obj_load_image)))
{
    if instance_exists(obj_window_alert)
    {
        audio_play_sound(snd_item_select, 0, false)
        obj_editormanager.expand_open = 0
        with (obj_window_alert)
            instance_destroy()
    }
    else if instance_exists(obj_panel_list)
    {
        audio_play_sound(snd_item_select, 0, false)
        obj_editormanager.expand_open = 0
        with (obj_panel_list)
            instance_destroy()
    }
}


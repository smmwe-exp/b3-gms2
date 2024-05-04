if (sprite_index == spr_button_save)
{
    audio_play_sound(snd_select_guardabot, 0, false)
    if instance_exists(obj_panel_save_load)
    {
        with (obj_panel_save_load)
            event_user(0)
        obj_robot.active = 0
    }
    obj_editormanager.expand_open = 2
    instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_window_alert)
}
else if (sprite_index == spr_button_load)
{
    audio_play_sound(snd_select_guardabot, 0, false)
    if instance_exists(obj_panel_save_load)
    {
        with (obj_panel_save_load)
            event_user(0)
        obj_robot.active = 0
    }
    obj_editormanager.expand_open = 2
    instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_panel_list)
}


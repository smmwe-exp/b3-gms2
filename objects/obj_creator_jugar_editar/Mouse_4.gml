if ((global.editor_activity == 1) && ((image_speed == 0) && ((obj_editormanager.expand_open == 0) && ((obj_cursor.cont_panel_creator == 0) && ((!instance_exists(obj_apariencia)) && ((!instance_exists(obj_bg_selection)) && (obj_cursor.move == 0)))))))
{
    if (global.play_lock == 0)
    {
        image_speed = 0.45
        event_user(2)
    }
    else
        audio_play_sound(snd_wrong, 0, false)
}


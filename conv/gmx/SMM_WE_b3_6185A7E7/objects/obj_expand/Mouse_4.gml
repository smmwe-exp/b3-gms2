if ((obj_levelmanager.editor == 1) && ((obj_editormanager.expand_open == 0) && ((obj_levelmanager.editor_sonidos == 0) && ((obj_creator_jugar_editar.image_speed == 0) && ((!place_meeting(x, y, obj_button_close)) && ((!place_meeting(x, y, obj_panel_expand)) && ((!instance_exists(obj_apariencia)) && ((global.cursor == 0) && (can_press == 1)))))))))
{
    audio_play_sound(snd_open_palette, 0, false)
    obj_editormanager.hspeed = 0
    obj_editormanager.vspeed = 0
    obj_editormanager.expand_open = 2
    instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_panel_expand)
    with (obj_cursor)
    {
        item_add = 0
        if (cont_panel_right == 0)
            cont_panel_right = 1
        if (cont_panel_left == 0)
            cont_panel_left = 1
        if (cont_panel_top == 0)
            cont_panel_top = 1
        cont_panel_creator = 1
    }
    if (obj_persistent.modo_android == 1)
        obj_creator_jugar_editar.visible = 0
    if instance_exists(obj_bg_selection)
    {
        with (obj_bg_selection)
            instance_destroy()
    }
    if instance_exists(obj_time)
    {
        with (obj_time)
            instance_destroy()
    }
    active = 1
    visible = 0
}


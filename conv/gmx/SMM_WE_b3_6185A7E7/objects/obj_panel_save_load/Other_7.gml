if (sprite_index == spr_panel_save_load)
{
    image_speed = 0
    image_index = 4
    instance_create((__view_get( e__VW.XView, 0 ) + 213), (__view_get( e__VW.YView, 0 ) + 62), obj_button_save_load)
    instance_create((__view_get( e__VW.XView, 0 ) + 213), (__view_get( e__VW.YView, 0 ) + 105), obj_button_save_changes)
    with (instance_create((__view_get( e__VW.XView, 0 ) + 213), (__view_get( e__VW.YView, 0 ) + 171), obj_button_save_load))
        sprite_index = spr_button_load
}
else if (sprite_index == spr_panel_save_load_reverse)
{
    if ((!instance_exists(obj_bg_selection)) && ((!instance_exists(obj_apariencia)) && ((!instance_exists(obj_time)) && ((!instance_exists(obj_autoavance)) && ((!instance_exists(obj_window_alert)) && ((!instance_exists(obj_panel_list)) && (!instance_exists(obj_condiciones))))))))
        obj_editormanager.expand_open = 0
    instance_destroy()
}


if (sprite_index == spr_cronometro)
{
    image_speed = 0
    image_index = 4
    with (instance_create((__view_get( e__VW.XView, 0 ) + 106), (__view_get( e__VW.YView, 0 ) + 57), obj_button_time))
        sprite_index = spr_button_time_up
    with (instance_create((__view_get( e__VW.XView, 0 ) + 106), (__view_get( e__VW.YView, 0 ) + 130), obj_button_time))
        sprite_index = spr_button_time_down
    instance_create((__view_get( e__VW.XView, 0 ) + 81), (__view_get( e__VW.YView, 0 ) + 157), obj_button_ok)
    can_time = 1
}
else if (sprite_index == spr_cronometro_reverse)
{
    if ((!instance_exists(obj_panel_save_load)) && ((!instance_exists(obj_apariencia)) && ((!instance_exists(obj_autoavance)) && ((!instance_exists(obj_bg_selection)) && (!instance_exists(obj_condiciones))))))
        obj_editormanager.expand_open = 0
    instance_destroy()
}


if (sprite_index == spr_panel_autoavance_anim)
{
    image_speed = 0
    image_index = 4
    with (instance_create((__view_get( e__VW.XView, 0 ) + 72), (__view_get( e__VW.YView, 0 ) + 61), obj_button_autoavance))
    {
        index = 0
        if (global.autoavance == 0)
            image_index = 1
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 72), (__view_get( e__VW.YView, 0 ) + 84), obj_button_autoavance))
    {
        index = 1
        if (global.autoavance == 1)
            image_index = 1
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 72), (__view_get( e__VW.YView, 0 ) + 107), obj_button_autoavance))
    {
        index = 2
        if (global.autoavance == 2)
            image_index = 1
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 72), (__view_get( e__VW.YView, 0 ) + 130), obj_button_autoavance))
    {
        index = 3
        if (global.autoavance == 3)
            image_index = 1
    }
    instance_create((__view_get( e__VW.XView, 0 ) + 105), (__view_get( e__VW.YView, 0 ) + 158), obj_button_ok)
}
else if (sprite_index == spr_panel_autoavance_anim_reverse)
{
    if ((!instance_exists(obj_panel_save_load)) && ((!instance_exists(obj_apariencia)) && ((!instance_exists(obj_bg_selection)) && ((!instance_exists(obj_time)) && (!instance_exists(obj_condiciones))))))
        obj_editormanager.expand_open = 0
    instance_destroy()
}


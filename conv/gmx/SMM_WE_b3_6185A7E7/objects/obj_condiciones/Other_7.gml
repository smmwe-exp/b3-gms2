if (sprite_index == spr_panel_condiciones)
{
    image_speed = 0
    image_index = 3
    can_draw = 1
    with (instance_create((__view_get( e__VW.XView, 0 ) + 83), (__view_get( e__VW.YView, 0 ) + 88), obj_tabs_condiciones))
    {
        index = 0
        selected = 1
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 141), (__view_get( e__VW.YView, 0 ) + 88), obj_tabs_condiciones))
    {
        index = 1
        disabled = 1
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 199), (__view_get( e__VW.YView, 0 ) + 88), obj_tabs_condiciones))
    {
        index = 2
        disabled = 1
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 257), (__view_get( e__VW.YView, 0 ) + 88), obj_tabs_condiciones))
    {
        index = 3
        if (global.condiciones == 1)
            disabled = 0
        else
            disabled = 1
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 100), (__view_get( e__VW.YView, 0 ) + 107), obj_condiciones_button))
    {
        sprite_index = spr_condiciones_button_up
        if (global.condiciones_count == 1)
            image_index = 1
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 100), (__view_get( e__VW.YView, 0 ) + 151), obj_condiciones_button))
    {
        sprite_index = spr_condiciones_button_down
        if (global.condiciones_count == 0)
            image_index = 1
    }
    instance_create((__view_get( e__VW.XView, 0 ) + 214), (__view_get( e__VW.YView, 0 ) + 150), obj_button_ok)
}
else if (sprite_index == spr_panel_condiciones_reverse)
{
    if ((!instance_exists(obj_panel_save_load)) && ((!instance_exists(obj_apariencia)) && ((!instance_exists(obj_bg_selection)) && ((!instance_exists(obj_time)) && (!instance_exists(obj_autoavance))))))
        obj_editormanager.expand_open = 0
    instance_destroy()
}


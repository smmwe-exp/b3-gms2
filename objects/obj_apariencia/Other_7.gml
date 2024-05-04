if (sprite_index == spr_panel_apariencia_anim)
{
    image_speed = 0
    image_index = 4
    with (instance_create((__view_get( e__VW.XView, 0 ) + 68), (__view_get( e__VW.YView, 0 ) + 65), obj_card_logo))
    {
        apariencia = 0
        image_index = 0
        x_pos = 68
        y_pos = 65
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 116), (__view_get( e__VW.YView, 0 ) + 65), obj_card_logo))
    {
        apariencia = 1
        image_index = 1
        x_pos = 116
        y_pos = 65
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 68), (__view_get( e__VW.YView, 0 ) + 92), obj_card_logo))
    {
        apariencia = 2
        image_index = 2
        x_pos = 68
        y_pos = 92
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 116), (__view_get( e__VW.YView, 0 ) + 92), obj_card_logo))
    {
        apariencia = 3
        image_index = 3
        x_pos = 116
        y_pos = 92
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 68), (__view_get( e__VW.YView, 0 ) + 147), obj_card_logo))
    {
        apariencia = 4
        image_index = 4
        x_pos = 68
        y_pos = 147
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 116), (__view_get( e__VW.YView, 0 ) + 147), obj_card_logo))
    {
        apariencia = 5
        image_index = 5
        x_pos = 116
        y_pos = 147
    }
}
else if (sprite_index == spr_panel_apariencia_anim_reverse)
{
    if ((!instance_exists(obj_panel_save_load)) && ((!instance_exists(obj_time)) && ((!instance_exists(obj_autoavance)) && ((!instance_exists(obj_bg_selection)) && (!instance_exists(obj_condiciones))))))
        obj_editormanager.expand_open = 0
    instance_destroy()
}


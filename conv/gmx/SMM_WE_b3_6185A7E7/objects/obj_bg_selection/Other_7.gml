if (sprite_index == spr_panel_entorno_anim)
{
    image_speed = 0
    image_index = 4
    with (instance_create((__view_get( e__VW.XView, 0 ) + 75), (__view_get( e__VW.YView, 0 ) + 58), obj_bg1))
    {
        bg_s = "ground"
        image_index = 0
        subimage = image_index
        x_pos = 75
        y_pos = 58
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 75), (__view_get( e__VW.YView, 0 ) + 82), obj_bg1))
    {
        bg_s = "underground"
        image_index = 1
        subimage = image_index
        x_pos = 75
        y_pos = 82
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 75), (__view_get( e__VW.YView, 0 ) + 106), obj_bg1))
    {
        bg_s = "underwater"
        image_index = 2
        subimage = image_index
        x_pos = 75
        y_pos = 106
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 75), (__view_get( e__VW.YView, 0 ) + 130), obj_bg1))
    {
        bg_s = "desert"
        image_index = 3
        subimage = image_index
        x_pos = 75
        y_pos = 130
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 75), (__view_get( e__VW.YView, 0 ) + 154), obj_bg1))
    {
        bg_s = "snow"
        image_index = 4
        subimage = image_index
        x_pos = 75
        y_pos = 154
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 124), (__view_get( e__VW.YView, 0 ) + 58), obj_bg1))
    {
        bg_s = "sky"
        image_index = 5
        subimage = image_index
        x_pos = 124
        y_pos = 58
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 124), (__view_get( e__VW.YView, 0 ) + 82), obj_bg1))
    {
        bg_s = "forest"
        image_index = 6
        subimage = image_index
        x_pos = 124
        y_pos = 82
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 124), (__view_get( e__VW.YView, 0 ) + 106), obj_bg1))
    {
        bg_s = "ghost"
        image_index = 7
        subimage = image_index
        x_pos = 124
        y_pos = 106
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 124), (__view_get( e__VW.YView, 0 ) + 130), obj_bg1))
    {
        bg_s = "airship"
        image_index = 8
        subimage = image_index
        x_pos = 124
        y_pos = 130
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 124), (__view_get( e__VW.YView, 0 ) + 154), obj_bg1))
    {
        bg_s = "castle"
        image_index = 9
        subimage = image_index
        x_pos = 124
        y_pos = 154
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 170), (__view_get( e__VW.YView, 0 ) + 106), obj_bg1))
    {
        bg_s = "castle"
        image_index = 10
        subimage = image_index
        x_pos = 170
        y_pos = 106
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 170), (__view_get( e__VW.YView, 0 ) + 130), obj_bg1))
    {
        bg_s = "castle"
        image_index = 11
        subimage = image_index
        x_pos = 170
        y_pos = 130
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 170), (__view_get( e__VW.YView, 0 ) + 154), obj_bg1))
    {
        bg_s = "castle"
        image_index = 12
        subimage = image_index
        x_pos = 170
        y_pos = 154
    }
    instance_create((__view_get( e__VW.XView, 0 ) + 170), (__view_get( e__VW.YView, 0 ) + 54), obj_night_change)
}
else if (sprite_index == spr_panel_entorno_anim_reverse)
{
    if ((!instance_exists(obj_panel_save_load)) && ((!instance_exists(obj_apariencia)) && ((!instance_exists(obj_autoavance)) && ((!instance_exists(obj_time)) && (!instance_exists(obj_condiciones))))))
        obj_editormanager.expand_open = 0
    instance_destroy()
}


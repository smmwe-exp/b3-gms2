if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_cursor, 0, 0) && (obj_erase.active == 1))
{
    if (global.apariencia == 3)
    {
        sprite_index = scr_NSMBU_crouch_idle()
        image_speed = 1
    }
    else
    {
        sprite_index = scr_marioduck()
        image_speed = 0
        image_index = 0
    }
    anim_gotas += 0.2
}
else
{
    if (drag == 1)
    {
        if (global.apariencia == 3)
        {
            sprite_index = scr_NSMBU_walk()
            image_speed = 0.6
        }
        else
        {
            sprite_index = scr_mariowalk()
            image_speed = 0.2
        }
    }
    else
    {
        sprite_index = scr_marioidle()
        if (global.apariencia == 3)
            image_index = 5
        else
            image_index = 0
    }
    anim_gotas = 0
}
if (drag_draw == 1)
{
    if (instance_exists(obj_editormanager) && (obj_editormanager.zoom == 2))
    {
        x = (__view_get( e__VW.XView, 0 ) + (x_start * 2))
        y = (__view_get( e__VW.YView, 0 ) + (y_start * 2))
    }
    else
    {
        x = (__view_get( e__VW.XView, 0 ) + x_start)
        y = (__view_get( e__VW.YView, 0 ) + y_start)
    }
    if (instance_exists(obj_editormanager) && ((obj_editormanager.zoom == 3) || (obj_editormanager.zoom == 1)))
    {
        if (y >= ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) - 48))
            y = ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) - 48)
        else if (y <= (__view_get( e__VW.YView, 0 ) + 39))
            y = (__view_get( e__VW.YView, 0 ) + 39)
        if (x <= (__view_get( e__VW.XView, 0 ) + 68))
            x = (__view_get( e__VW.XView, 0 ) + 68)
        else if (x >= ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 48))
            x = ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 48)
    }
}
if (follow == 1)
{
    drag_draw = 0
    event_user(0)
}


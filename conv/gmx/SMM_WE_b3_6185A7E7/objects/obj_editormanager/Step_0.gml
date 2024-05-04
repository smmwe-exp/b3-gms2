if (obj_levelmanager.editor == 1)
{
    __view_set( e__VW.Object, 0, id )
    if (zoom == 2)
        velocidad = 8
    else
        velocidad = 4
    if instance_exists(obj_levelmanager)
    {
        with (obj_levelmanager)
        {
            x = other.x
            y = other.y
            fallw = 1
        }
    }
    if (((obj_editormanager.expand_open == 0) || (obj_levelmanager.editor_water == 1)) && (!instance_exists(obj_ventana_water)))
    {
        if keyboard_check(global.lanzar_agarrar)
            move_velocity = 10
        else if keyboard_check_released(global.lanzar_agarrar)
            move_velocity = 0
        if keyboard_check(global.arriba)
            vspeed = ((-velocidad) - move_velocity)
        else if keyboard_check(global.abajo)
            vspeed = (velocidad + move_velocity)
        else
            vspeed = 0
        if (obj_levelmanager.editor_water == 0)
        {
            if keyboard_check(global.izquierda)
                hspeed = ((-velocidad) - move_velocity)
            else if keyboard_check(global.derecha)
                hspeed = (velocidad + move_velocity)
            else
                hspeed = 0
        }
    }
    if ((obj_persistent.modo_android == 1) && (obj_cursor.move_view == 1))
    {
        if (mouse_x > (__view_get( e__VW.XView, 0 ) + 320))
            hspeed = velocidad
        else if (mouse_x < (__view_get( e__VW.XView, 0 ) + 80))
            hspeed = (-velocidad)
        else if ((mouse_x < (__view_get( e__VW.XView, 0 ) + 320)) || (mouse_x > (__view_get( e__VW.XView, 0 ) + 80)))
            hspeed = 0
        if (mouse_y > (__view_get( e__VW.YView, 0 ) + 184))
            vspeed = velocidad
        else if (mouse_y < (__view_get( e__VW.YView, 0 ) + 56))
            vspeed = (-velocidad)
        else if ((mouse_y < (__view_get( e__VW.XView, 0 ) + 184)) || (mouse_y > (__view_get( e__VW.XView, 0 ) + 56)))
            vspeed = 0
    }
    if ((obj_persistent.modo_android == 1) && ((obj_cursor.move_view == 1) && mouse_check_button_released(1)))
    {
        obj_cursor.move_view = 0
        speed = 0
        obj_editormanager.expand_open = 0
    }
}
else
    __view_set( e__VW.Object, 0, obj_levelmanager )
if (keyboard_check_pressed(vk_space) && ((obj_levelmanager.editor_water == 0) && ((obj_levelmanager.editor == 1) && ((obj_editormanager.expand_open == 0) && ((!instance_exists(obj_apariencia)) && ((!instance_exists(obj_bg_selection)) && ((!instance_exists(obj_time)) && ((!instance_exists(obj_autoavance)) && ((!instance_exists(obj_condiciones)) && ((!instance_exists(obj_condiciones)) && ((!instance_exists(obj_panel_save_load)) && ((!instance_exists(obj_ventana)) && ((room_width >= 768) && (obj_creator_jugar_editar.image_speed == 0))))))))))))))
{
    if (zoom == 0)
    {
        zoom = 1
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
    }
    else if (zoom == 2)
    {
        zoom = 3
        with (obj_cursor)
        {
            if (cont_panel_right == 3)
                cont_panel_right = 2
            if (cont_panel_left == 3)
                cont_panel_left = 2
            if (cont_panel_top == 3)
                cont_panel_top = 2
            cont_panel_creator = 2
        }
    }
}
if instance_exists(obj_erase)
{
    if (obj_erase.active == 1)
        anim_goma += 0.1
    else
        anim_goma = 0
}


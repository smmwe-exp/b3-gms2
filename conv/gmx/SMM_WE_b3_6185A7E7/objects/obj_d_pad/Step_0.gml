var calculo_x, calculo_y, angle, distance;
x = __view_get( e__VW.XView, 0 )
y = (__view_get( e__VW.YView, 0 ) + 120)
for (i = 0; i < 5; i++)
{
    if (device_mouse_check_button(i, 1) && (!instance_exists(obj_settings_panel)))
    {
        calculo_x = (device_mouse_x(i) - __view_get( e__VW.XView, 0 ))
        calculo_y = (device_mouse_y(i) - __view_get( e__VW.YView, 0 ))
        if (!pad_active)
        {
            if ((calculo_x <= 96) && (calculo_y >= 96))
            {
                pad_x = calculo_x
                pad_y = calculo_y
                pad_active = 1
                toque = i
                with (obj_persistent)
                {
                    virtual_key_delete(mobile_keys[0])
                    virtual_key_delete(mobile_keys[1])
                    virtual_key_delete(mobile_keys[2])
                    virtual_key_delete(mobile_keys[3])
                    mobile_keys[0] = virtual_key_add(((other.pad_x - 32) * s), ((other.pad_y - 74) * s), (64 * s), (64 * s), global.arriba)
                    mobile_keys[1] = virtual_key_add(((other.pad_x - 32) * s), ((other.pad_y + 9) * s), (64 * s), (64 * s), global.abajo)
                    mobile_keys[2] = virtual_key_add(((other.pad_x - 74) * s), ((other.pad_y - 32) * s), (64 * s), (64 * s), global.izquierda)
                    mobile_keys[3] = virtual_key_add(((other.pad_x + 10) * s), ((other.pad_y - 32) * s), (64 * s), (64 * s), global.derecha)
                }
            }
        }
    }
}
if (pad_active == 1)
{
    calculo_x = (device_mouse_x(toque) - __view_get( e__VW.XView, 0 ))
    calculo_y = (device_mouse_y(toque) - __view_get( e__VW.YView, 0 ))
    angle = point_direction(pad_x, pad_y, calculo_x, calculo_y)
    distance = point_distance(pad_x, pad_y, calculo_x, calculo_y)
    pad_movex = (dcos(angle) * min(35, distance))
    pad_movey = ((-dsin(angle)) * min(35, distance))
    image_pad = 1
}
if device_mouse_check_button_released(toque, 1)
{
    pad_x = pad_startx
    pad_y = pad_starty
    pad_active = 0
    pad_movex = 0
    pad_movey = 0
    image_pad = 0
}


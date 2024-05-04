x = (__view_get( e__VW.XView, 0 ) + 320)
y = (__view_get( e__VW.YView, 0 ) + 94)
if (global.key_br == 1)
{
    image_index = 1
    keyboard_key_press(global.lanzar_agarrar)
}
else
    image_index = 0
if (mouse_check_button_pressed(1) && ((mouse_x > x) && ((mouse_x < (x + 64)) && ((mouse_y > y) && (mouse_y < (y + 64))))))
{
    if (global.key_br == 0)
        global.key_br = 1
    else
    {
        global.key_br = 0
        keyboard_key_release(global.lanzar_agarrar)
    }
}


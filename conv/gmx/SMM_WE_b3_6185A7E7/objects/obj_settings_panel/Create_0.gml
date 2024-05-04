image_speed = 0
image_index = global.idioma
if instance_exists(obj_editormanager)
    obj_editormanager.expand_open = 2
if instance_exists(obj_button_home)
{
    with (obj_button_home)
    {
        alarm[0] = -1
        press = 0
    }
}
if instance_exists(obj_pausa_button)
{
    with (obj_pausa_button)
    {
        alarm[0] = -1
        canpress = 1
    }
}
if (global.jugador == 0)
{
    active1 = 1
    active2 = 0
    active3 = 0
    active4 = 0
}
else if (global.jugador == 1)
{
    active1 = 0
    active2 = 1
    active3 = 0
    active4 = 0
}
else if (global.jugador == 2)
{
    active1 = 0
    active2 = 0
    active3 = 1
    active4 = 0
}
else if (global.jugador == 3)
{
    active1 = 0
    active2 = 0
    active3 = 0
    active4 = 1
}
if (global.w_scale == 1)
{
    act1 = 1
    act2 = 0
    act3 = 0
    act4 = 0
}
else if (global.w_scale == 2)
{
    act1 = 0
    act2 = 1
    act3 = 0
    act4 = 0
}
else if (global.w_scale == 3)
{
    act1 = 0
    act2 = 0
    act3 = 1
    act4 = 0
}
else if (global.w_scale == 4)
{
    act1 = 0
    act2 = 0
    act3 = 0
    act4 = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 55), (__view_get( e__VW.YView, 0 ) + 42), obj_configurar_controles))
    image_index = 0
with (instance_create((__view_get( e__VW.XView, 0 ) + 202), (__view_get( e__VW.YView, 0 ) + 42), obj_configurar_controles))
    image_index = 1
instance_create((__view_get( e__VW.XView, 0 ) + 55), (__view_get( e__VW.YView, 0 ) + 87), obj_button_settings_idioma)
instance_create((__view_get( e__VW.XView, 0 ) + 55), (__view_get( e__VW.YView, 0 ) + 123), obj_button_settings_estrella)
instance_create((__view_get( e__VW.XView, 0 ) + 55), (__view_get( e__VW.YView, 0 ) + 159), obj_button_settings_sonidos)
instance_create((__view_get( e__VW.XView, 0 ) + 202), (__view_get( e__VW.YView, 0 ) + 159), obj_button_settings_sm4j)
with (instance_create((__view_get( e__VW.XView, 0 ) + 202), (__view_get( e__VW.YView, 0 ) + 87), obj_selecting_player))
{
    value = 0
    image_draw = 0
    active = other.active1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 235), (__view_get( e__VW.YView, 0 ) + 87), obj_selecting_player))
{
    value = 1
    image_draw = 1
    active = other.active2
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 268), (__view_get( e__VW.YView, 0 ) + 87), obj_selecting_player))
{
    value = 2
    image_draw = 2
    active = other.active3
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 301), (__view_get( e__VW.YView, 0 ) + 87), obj_selecting_player))
{
    value = 3
    image_draw = 3
    active = other.active4
}
if (obj_persistent.modo_android == 0)
{
    with (instance_create((__view_get( e__VW.XView, 0 ) + 202), (__view_get( e__VW.YView, 0 ) + 123), obj_window_select))
    {
        value = 0
        image_draw = 0
        active = other.act1
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 235), (__view_get( e__VW.YView, 0 ) + 123), obj_window_select))
    {
        value = 1
        image_draw = 1
        active = other.act2
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 268), (__view_get( e__VW.YView, 0 ) + 123), obj_window_select))
    {
        value = 2
        image_draw = 2
        active = other.act3
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 301), (__view_get( e__VW.YView, 0 ) + 123), obj_window_select))
    {
        value = 3
        image_draw = 3
        active = other.act4
    }
}
instance_create((__view_get( e__VW.XView, 0 ) + 130), (__view_get( e__VW.YView, 0 ) + 186), obj_button_settings_close)


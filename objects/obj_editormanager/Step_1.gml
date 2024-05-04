var valor_1, valor_2, R;
if (global.instance_deactivate == 1)
{
    if (obj_levelmanager.editor == 0)
    {
        instance_deactivate_object(383)
        instance_deactivate_object(91)
        instance_activate_region((__view_get( e__VW.XView, 0 ) - 128), (__view_get( e__VW.YView, 0 ) - 32), ((__view_get( e__VW.WView, 0 ) + 128) + 128), (__view_get( e__VW.HView, 0 ) + 192), 1)
        instance_deactivate_object(173)
        instance_activate_region((__view_get( e__VW.XView, 0 ) - 32), (__view_get( e__VW.YView, 0 ) - 32), ((__view_get( e__VW.WView, 0 ) + 32) + 32), ((__view_get( e__VW.HView, 0 ) + 48) + 48), 1)
        instance_deactivate_object(430)
        instance_activate_region((__view_get( e__VW.XView, 0 ) - 32), (__view_get( e__VW.YView, 0 ) - 32), ((__view_get( e__VW.WView, 0 ) + 32) + 32), ((__view_get( e__VW.HView, 0 ) + 32) + 32), 1)
        instance_deactivate_object(613)
        instance_deactivate_object(620)
    }
    else
    {
        if instance_exists(obj_parent_save)
        {
            with (obj_parent_save)
            {
                if (exception == 0)
                {
                    if object_is_ancestor(object_index, obj_parent_resource)
                    {
                        if (drag == 0)
                            instance_deactivate_object(id)
                    }
                    else
                        instance_deactivate_object(id)
                }
            }
        }
        instance_deactivate_object(433)
        instance_deactivate_object(383)
        instance_activate_region((__view_get( e__VW.XView, 0 ) - 32), (__view_get( e__VW.YView, 0 ) - 32), ((__view_get( e__VW.WView, 0 ) + 32) + 32), ((__view_get( e__VW.HView, 0 ) + 32) + 32), 1)
    }
}
else
{
    if (obj_levelmanager.editor == 0)
        instance_activate_object(obj_levelmanager)
    instance_activate_object(obj_player_trail)
    instance_activate_object(obj_solidtop)
    instance_activate_object(obj_deactivation)
    instance_activate_object(obj_parent_save)
}
if (zoom == 2)
{
    valor_1 = 384
    valor_2 = 216
}
else
{
    valor_1 = 192
    valor_2 = 108
}
if (x < (__view_get( e__VW.XView, 0 ) + valor_1))
{
    x = (__view_get( e__VW.XView, 0 ) + valor_1)
    if (hspeed < 0)
        hspeed = 0
}
else if (x > ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - valor_1))
{
    x = ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - valor_1)
    if (hspeed > 0)
        hspeed = 0
}
if (y < (__view_get( e__VW.YView, 0 ) + valor_2))
{
    y = (__view_get( e__VW.YView, 0 ) + valor_2)
    if (vspeed < 0)
        vspeed = 0
}
else if (y > ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) - valor_2))
{
    y = ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) - valor_2)
    if (vspeed > 0)
        vspeed = 0
}
if (expand_open != 0)
{
    hspeed = 0
    vspeed = 0
}
if (zoom == 1)
{
    R = (__view_get( e__VW.HPort, 0 ) / __view_get( e__VW.WPort, 0 ))
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + (64) )
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + ((64 * R)) )
    if (__view_get( e__VW.WView, 0 ) >= 768)
    {
        __view_set( e__VW.WView, 0, 768 )
        __view_set( e__VW.HView, 0, 432 )
        zoom = 2
        if (!instance_exists(obj_change_view))
            instance_create(x, y, obj_change_view)
    }
}
else if (zoom == 3)
{
    R = (__view_get( e__VW.HPort, 0 ) / __view_get( e__VW.WPort, 0 ))
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) - (64) )
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - ((64 * R)) )
    if (__view_get( e__VW.WView, 0 ) <= 384)
    {
        __view_set( e__VW.WView, 0, 384 )
        __view_set( e__VW.HView, 0, 216 )
        zoom = 0
        if instance_exists(obj_change_view)
        {
            with (obj_change_view)
                instance_destroy()
        }
    }
}


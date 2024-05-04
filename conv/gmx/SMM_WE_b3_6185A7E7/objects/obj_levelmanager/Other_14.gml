if (global.reserveitem > 0)
{
    with (instance_create((__view_get( e__VW.XView, 0 ) + 184), (__view_get( e__VW.YView, 0 ) + 8), obj_reserveitem))
        sprite_index = scr_constant_get_sprite(global.reserveitem)
    global.reserveitem = 0
}


if (ready == 0)
{
    speed = 4
    move_towards_point((__view_get( e__VW.XView, 0 ) + 64), (__view_get( e__VW.YView, 0 ) + 48), speed)
    if ((x > (__view_get( e__VW.XView, 0 ) + 56)) && ((x < (__view_get( e__VW.XView, 0 ) + 72)) && ((y > (__view_get( e__VW.YView, 0 ) + 40)) && (y < (__view_get( e__VW.YView, 0 ) + 56)))))
    {
        speed = 0
        ready = 1
    }
}
else if (ready == 1)
{
    x = (__view_get( e__VW.XView, 0 ) + 64)
    y = (__view_get( e__VW.YView, 0 ) + 48)
    if instance_exists(obj_mario)
    {
        if ((global.apariencia == 2) && (global.modo_noche == 0))
            sprite_index = spr_angrysun_atack
        else if ((global.apariencia == 3) && (global.modo_noche == 0))
            sprite_index = spr_NSMBU_angrysun_attack
        ready = 2
        alarm[0] = 1
        movement = instance_create(x, y, obj_angrysun_movement)
    }
}
else if instance_exists(movement)
{
    x = (__view_get( e__VW.XView, 0 ) + movement.x)
    y = (__view_get( e__VW.YView, 0 ) + movement.y)
}
else
{
    x = (__view_get( e__VW.XView, 0 ) + 64)
    y = (__view_get( e__VW.YView, 0 ) + 48)
}


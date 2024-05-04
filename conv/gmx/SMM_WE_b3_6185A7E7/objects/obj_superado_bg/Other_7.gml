if (sprite_index == spr_superado_bg)
{
    image_speed = 0
    image_index = 37
    global.powerup = 0
    alarm[0] = 60
}
else if (sprite_index == spr_superado_bg2)
{
    image_speed = 0
    image_index = 12
    dibujar_texto = 1
    instance_deactivate_all(true)
    instance_activate_object(obj_persistent)
    if (!instance_exists(obj_cursor))
        instance_create(0, 0, obj_cursor)
    instance_create((__view_get( e__VW.XView, 0 ) + 127), (__view_get( e__VW.YView, 0 ) + 148), obj_button_superado)
    with (instance_create((__view_get( e__VW.XView, 0 ) + 251), (__view_get( e__VW.YView, 0 ) + 148), obj_button_superado))
        sprite_index = spr_superado_salir
}


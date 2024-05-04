if (sprite_index == spr_rocket_despegue)
{
    image_speed = 0
    image_index = 20
    instance_create((__view_get( e__VW.XView, 0 ) + 182), (__view_get( e__VW.YView, 0 ) + 216), obj_rocket_anim)
}


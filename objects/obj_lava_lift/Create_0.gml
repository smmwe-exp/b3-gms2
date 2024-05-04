if (global.apariencia == 0)
{
    sprite_index = spr_SMB_lava_lift
    image_speed = 0
    image_index = 0
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_lava_lift
    image_speed = 0.15
}
else if (global.apariencia == 2)
{
    sprite_index = spr_lava_lift
    image_speed = 0.15
}
ready = 0
primero = instance_create((x - 16), y, obj_lava_lift_part)
segundo = instance_create((x - 32), y, obj_lava_lift_part)
tercero = instance_create((x - 48), y, obj_lava_lift_part)
primero.parent = id
segundo.parent = id
tercero.parent = id


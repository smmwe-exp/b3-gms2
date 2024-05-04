with (instance_create(((x - 3) + random(round(22))), ((y - 3) + random(round(22))), obj_smoke))
{
    if (global.apariencia != 2)
        sprite_index = spr_SMB3_fire_rest
    else if (global.apariencia == 2)
        sprite_index = spr_fire_rest
    image_speed = 0.3
    depth = (other.depth - 1)
}
alarm[1] = 2


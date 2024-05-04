if (wings == 1)
{
    with (instance_create((x + 9), (y + 8), obj_wings_dead))
        direct = -1
    with (instance_create((x - 11), (y + 8), obj_wings_dead))
    {
        sprite_index = spr_wings_dead2
        direct = -1
    }
    hspeed = 0
    alarm[10] = 1
    wings = 0
}
else
{
    if (global.apariencia == 0)
    {
        with (instance_create(x, y, obj_stomped))
            sprite_index = spr_SMB_goomba_stomped
    }
    else if (global.apariencia == 1)
    {
        with (instance_create(x, y, obj_stomped))
            sprite_index = spr_SMB3_goomba_stomped
    }
    else if (global.apariencia == 2)
    {
        with (instance_create((x - 8), y, obj_galoomba_hold))
        {
            key = other.key
            direct = other.direct
        }
        key = 0
    }
    else if (global.apariencia == 3)
    {
        with (instance_create(x, y, obj_stomped))
        {
            sprite_index = spr_NSMBU_goomba_stomped
            direct = other.direct
        }
    }
    if ((key == 1) && (global.apariencia != 2))
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
        key = 0
    }
    instance_destroy()
}


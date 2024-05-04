if (wings == 1)
{
    if (direct == 1)
    {
        with (instance_create((x - 9), (y + 9), obj_wings_dead))
            direct = 1
    }
    else
    {
        with (instance_create((x + 9), (y + 9), obj_wings_dead))
            direct = -1
    }
    hspeed = 0
    wings = 0
    if (global.apariencia == 0)
    {
        if (night_sprite == 1)
            sprite_index = spr_SMB_bobomb_night
        else
            sprite_index = spr_SMB_bobomb
    }
    else if (global.apariencia == 1)
    {
        if (night_sprite == 1)
            sprite_index = spr_SMB3_bobomb_night
        else
            sprite_index = spr_SMB3_bobomb_wings
    }
    else if (global.apariencia == 2)
        sprite_index = spr_bobomb
    alarm[10] = 1
}
else
{
    with (instance_create((x - 8), y, obj_bobomb_hold))
        direct = other.direct
    instance_destroy()
}


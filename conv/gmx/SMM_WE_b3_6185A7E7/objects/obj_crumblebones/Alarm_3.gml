with (instance_create(x, y, obj_drybones))
{
    christmas = 0
    if (global.apariencia == 0)
        sprite_index = spr_SMB_drybones
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_drybones
    else if (global.apariencia == 2)
        sprite_index = spr_drybones
    direct = other.image_xscale
}
instance_destroy()


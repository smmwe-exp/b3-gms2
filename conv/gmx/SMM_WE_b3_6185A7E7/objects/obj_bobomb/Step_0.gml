if ((wings == 1) && (paracaidas == 0))
{
    wings_anim += 0.12
    if (y > (ystart + 10))
    {
        if (vspeed < -0.4)
            vspeed = -0.4
        else
            vspeed -= 0.085
    }
    else if (y < (ystart - 10))
    {
        if (vspeed > 0.4)
            vspeed = 0.4
        else
            vspeed += 0.085
    }
}
else
    event_inherited()
if (paracaidas == 1)
{
    direct = -1
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
    if (gravity == 0)
    {
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
                sprite_index = spr_SMB3_bobomb
        }
        else if (global.apariencia == 2)
            sprite_index = spr_bobomb
        instance_create(x, y, obj_paracaidas_go)
        paracaidas = 0
        image_speed = 0.15
        ystart = (y - 32)
        y++
        hspeed = 0
        alarm[10] = 10
    }
}
if (instance_exists(obj_lava_water) && (((y + 16) >= obj_lava_water.y) && (global.bg_level == "castle")))
{
    instance_create(x, y, obj_explosion)
    instance_destroy()
}


if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && (((y + 8) > obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    swimming = 1
else
    swimming = 0
event_user(2)
event_user(3)
event_user(4)
if (hspeed > 0)
    direct = 1
else if (hspeed < 0)
    direct = -1
if (wings == 1)
{
    wings_anim += 0.12
    if (paracaidas == 0)
    {
        if (gravity == 0)
        {
            if (swimming == 1)
                vspeed = -2.062
            else
                vspeed = -4.125
        }
    }
}
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
        instance_create((x + (3 * direct)), (y + para_y), obj_paracaidas_go)
        paracaidas = 0
        hspeed = 0
        alarm[10] = 10
    }
}
if (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && (global.bg_level == "castle")))
{
    if (global.apariencia != 0)
    {
        with (instance_create(x, (y - 8), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava
            depth = -10
        }
    }
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (((y + 8) > obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 1))))
{
    with (instance_create(x, (y - 8), obj_smoke))
    {
        if (global.apariencia == 1)
            sprite_index = spr_SMB3_splash_lava_purple
        else if (global.apariencia == 2)
            sprite_index = spr_splash_lava_purple
        depth = -10
    }
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}


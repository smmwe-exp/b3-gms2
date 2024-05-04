hspeed = (max(0, (abs(hspeed) - 0.15)) * sign(hspeed))
if (abs(hspeed) < 0.15)
    hspeed = 0
if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && (((y + 8) > obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    swimming = 1
else
    swimming = 0
if (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && (global.bg_level == "castle")))
{
    if (global.apariencia != 0)
    {
        if (global.apariencia != 0)
        {
            with (instance_create((x + 8), (y - 8), obj_smoke))
            {
                if (global.apariencia == 1)
                    sprite_index = spr_SMB3_splash_lava
                else if (global.apariencia == 2)
                    sprite_index = spr_splash_lava
                depth = -10
            }
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
    if (global.apariencia != 0)
    {
        with (instance_create((x + 8), (y - 8), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava_purple
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava_purple
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
if (wings == 1)
{
    if (modo_vuelo == 1)
        wings_anim += 0.18
    else
        wings_anim += 0.12
    if ((jump_plant == 1) && (place_free(x, (y + 1)) && ((vspeed > 0) && (modo_vuelo == 0))))
    {
        modo_vuelo = 1
        y_start_vuelo = y
        alarm[1] = 180
    }
}
event_user(4)


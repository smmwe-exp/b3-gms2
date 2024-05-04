event_inherited()
if (instance_exists(obj_lava_water) && (((y + 8) >= (obj_lava_water.y - 12)) && (global.bg_level == "castle")))
{
    if ((global.apariencia != 0) && (global.apariencia != 4))
    {
        with (instance_create((x + 8), y, obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava
            depth = -10
        }
    }
}
if (instance_exists(obj_lava_water) && (((y + 8) >= (obj_lava_water.y - 12)) && ((global.bg_level == "forest") && (global.modo_noche == 1))))
{
    if ((global.apariencia != 0) && (global.apariencia != 4))
    {
        with (instance_create((x + 8), y, obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava_purple
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava_purple
            depth = -10
        }
    }
}
if instance_exists(mytop)
{
    mytop.x = (x - 7)
    mytop.y = (y + 1)
}


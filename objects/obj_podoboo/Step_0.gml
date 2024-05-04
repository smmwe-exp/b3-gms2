if ((y < (ystart + 39)) && (ready == 1))
{
    ready = 0
    gravity = 0.2
}
if (bbox_top > room_height)
{
    if (!ready)
    {
        ready = 1
        alarm[0] = 10
    }
}
if (instance_exists(obj_lava_water) && ((y >= obj_lava_water.y) && ((global.bg_level == "castle") || ((global.bg_level == "forest") && (global.modo_noche == 1)))))
{
    if ((!ready) && (vspeed > 0))
    {
        ready = 1
        alarm[0] = 10
        if (global.apariencia != 0)
        {
            if (global.bg_level == "forest")
            {
                with (instance_create((x + 8), (obj_lava_water.y - 18), obj_smoke))
                {
                    if (global.apariencia == 1)
                        sprite_index = spr_SMB3_splash_lava_purple
                    else if (global.apariencia == 2)
                        sprite_index = spr_splash_lava_purple
                    depth = -12
                }
            }
            else
            {
                with (instance_create((x + 8), (obj_lava_water.y - 18), obj_smoke))
                {
                    if (global.apariencia == 1)
                        sprite_index = spr_SMB3_splash_lava
                    else if (global.apariencia == 2)
                        sprite_index = spr_splash_lava
                    depth = -12
                }
            }
        }
    }
}
direct = 1
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (instance_exists(obj_lava_water) && ((y >= obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
{
    if (vspeed > 1)
        vspeed = 1
}
else if (vspeed > 6)
    vspeed = 6


if (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && ((global.bg_level == "castle") && (modo_lava == 0))))
{
    if (global.apariencia != 0)
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
    }
    modo_lava = 1
}
if ((modo_lava == 1) && (gravity != 0))
{
    gravity = 0.1
    if (vspeed > 1.2)
        vspeed = 1.2
}
else if ((modo_lava == 0) && (gravity != 0))
{
    gravity = 0.2
    if (vspeed > 2)
        vspeed = 2
}
if ((y > room_height) || ((vspeed > 0) && (instance_exists(obj_lava_water) && (((y - 32) > (obj_lava_water.y + 32)) && ((global.bg_level == "castle") || ((global.bg_level == "forest") && (global.modo_noche == 1)))))))
    instance_destroy()


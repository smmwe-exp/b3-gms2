if (ready > 0)
{
    if (global.modo_noche == 1)
    {
        if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
        {
            hspeed -= 0.0224
            if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && (((y + 8) > obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
            {
                if (hspeed < -1)
                    hspeed = -1
            }
            else if (hspeed < -1.2)
                hspeed = -1.2
        }
        else
        {
            hspeed += 0.0324
            if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && (((y + 8) > obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
            {
                if (hspeed > 1)
                    hspeed = 1
            }
            else if (hspeed > 1.2)
                hspeed = 1.2
        }
    }
    if (((ready == 1) && (global.apariencia == 2)) || ((ready == 1) && (fisica == 1)))
        event_inherited()
    else if ((ready == 1) && (global.apariencia != 2))
        event_user(3)
    if (ready == 1)
        angle -= (5 * sign(hspeed))
    if (obj_levelmanager.editor == 0)
    {
        if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && (((y + 8) > obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
        {
            if (hspeed > 1)
            {
                hspeed -= 0.08
                if (hspeed <= 1)
                    hspeed = 1
            }
            else if (hspeed < -1)
            {
                hspeed += 0.08
                if (hspeed >= -1)
                    hspeed = -1
            }
        }
        else if (hspeed > 1.2)
        {
            hspeed -= 0.08
            if (hspeed <= 1.2)
                hspeed = 1.2
        }
        else if (hspeed < -1.2)
        {
            hspeed += 0.08
            if (hspeed >= -1.2)
                hspeed = -1.2
        }
    }
    if (((modo_lava == 0) && (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && (global.bg_level == "castle")))) || ((modo_lava == 0) && (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && ((global.bg_level == "forest") && ((global.modo_noche == 1) && (obj_levelmanager.editor == 0)))))))
    {
        modo_lava = 1
        if (global.apariencia != 0)
        {
            with (instance_create(x, (y - 8), obj_smoke))
            {
                if (global.bg_level == "castle")
                {
                    if (global.apariencia == 1)
                        sprite_index = spr_SMB3_splash_lava
                    else if (global.apariencia == 2)
                        sprite_index = spr_splash_lava
                }
                else if (global.apariencia == 1)
                    sprite_index = spr_SMB3_splash_lava_purple
                else if (global.apariencia == 2)
                    sprite_index = spr_splash_lava_purple
                depth = -10
            }
        }
    }
    else if (y > room_height)
        instance_destroy()
    if (instance_exists(obj_lava_water) && (((y + 8) <= (obj_lava_water.y - 12)) && ((obj_lava_water.vspeed > 0) && ((modo_lava == 1) || (swimming == 1)))))
        y = (obj_lava_water.y - 20)
}


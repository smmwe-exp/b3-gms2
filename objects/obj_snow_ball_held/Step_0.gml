if (hspeed != 0)
    angle -= (3 * sign(hspeed))
if ((global.bg_level == "underwater") || (place_meeting(x, y, obj_water_draw) || (((global.modo_noche == 1) && (global.bg_level == "sky")) || ((global.modo_noche == 1) && (global.bg_level == "airship")))))
    swimming = 1
else
    swimming = 0
if (obj_levelmanager.editor == 0)
{
    if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || ((global.bg_level == "airship") && (global.modo_noche == 1))))
    {
        if (hspeed > 1.2)
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
    else if (hspeed > 1.5)
    {
        hspeed -= 0.08
        if (hspeed <= 1.5)
            hspeed = 1.5
    }
    else if (hspeed < -1.5)
    {
        hspeed += 0.08
        if (hspeed >= -1.5)
            hspeed = -1.5
    }
}
event_user(3)
if ((global.apariencia == 2) || (fisica == 1))
    event_user(4)
if (((modo_lava == 0) && ((y >= (room_height - 24)) && ((global.bg_level == "castle") && (obj_levelmanager.editor == 0)))) || ((modo_lava == 0) && ((y >= (room_height - 24)) && ((global.bg_level == "forest") && ((global.modo_noche == 1) && (obj_levelmanager.editor == 0))))))
{
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
    event_user(0)
}


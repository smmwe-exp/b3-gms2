audio_play_sound(snd_podoboo, 0, false)
if (instance_exists(obj_lava_water) && ((y >= obj_lava_water.y) && ((global.bg_level == "castle") || ((global.bg_level == "forest") && (global.modo_noche == 1)))))
{
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


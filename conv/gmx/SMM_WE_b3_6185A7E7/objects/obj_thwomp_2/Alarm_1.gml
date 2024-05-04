if (salpicadura == 1)
{
    if instance_exists(obj_lava_water)
    {
        if (obj_lava_water.vspeed != 0)
        {
            if ((global.bg_level != "forest") && (!audio_is_playing(snd_podoboo)))
                audio_play_sound(snd_podoboo, 0, false)
            if ((global.bg_level == "forest") && (global.modo_noche == 1))
            {
                with (instance_create((x - 16), (obj_lava_water.y - 16), obj_smoke))
                {
                    if (global.apariencia == 1)
                        sprite_index = spr_SMB3_megasplash_lava_purple
                    else if (global.apariencia == 2)
                        sprite_index = spr_megasplash_lava_purple
                    depth = -9
                }
                with (instance_create((x + 16), (obj_lava_water.y - 16), obj_smoke))
                {
                    if (global.apariencia == 1)
                        sprite_index = spr_SMB3_megasplash_lava_purple
                    else if (global.apariencia == 2)
                        sprite_index = spr_megasplash_lava_purple
                    depth = -9
                }
            }
            else if (global.bg_level == "forest")
            {
                with (instance_create((x - 16), (obj_lava_water.y - 16), obj_smoke))
                {
                    if (global.apariencia == 1)
                        sprite_index = spr_SMB3_megasplash_water
                    else if (global.apariencia == 2)
                        sprite_index = spr_megasplash_water
                    depth = -9
                }
                with (instance_create((x + 16), (obj_lava_water.y - 16), obj_smoke))
                {
                    if (global.apariencia == 1)
                        sprite_index = spr_SMB3_megasplash_water
                    else if (global.apariencia == 2)
                        sprite_index = spr_megasplash_water
                    depth = -9
                }
            }
            else
            {
                with (instance_create((x - 16), (obj_lava_water.y - 16), obj_smoke))
                {
                    if (global.apariencia == 1)
                        sprite_index = spr_SMB3_megasplash_lava
                    else if (global.apariencia == 2)
                        sprite_index = spr_megasplash_lava
                    depth = -9
                }
                with (instance_create((x + 16), (obj_lava_water.y - 16), obj_smoke))
                {
                    if (global.apariencia == 1)
                        sprite_index = spr_SMB3_megasplash_lava
                    else if (global.apariencia == 2)
                        sprite_index = spr_megasplash_lava
                    depth = -9
                }
            }
            alarm[1] = 12
        }
        else
            alarm[1] = 1
    }
}


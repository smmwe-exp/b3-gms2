if ((sprite_index == spr_SMB_spring) || ((sprite_index == spr_SMB3_spring) || ((sprite_index == spr_spring) || ((sprite_index == spr_NSMBU_spring) || ((sprite_index == spr_SMB2_spring) || (sprite_index == spr_SMB2_spring_night))))))
{
    if (ready2 == 1)
    {
        if (global.apariencia == 3)
        {
            if (keyboard_check(global.saltar) || keyboard_check(global.saltar_spin))
                audio_play_sound(snd_NSMBU_spring_high, 0, false)
            else
                audio_play_sound(snd_NSMBU_spring, 0, false)
        }
        else
            audio_play_sound(scr_snd_spring(), 0, false)
        with (obj_mario)
        {
            if (disablecontrols == 0)
            {
                jump_type = choose(1, 2, 3)
                event_user(1)
            }
            if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0))))))
                vspeed = -3.625
            else
                vspeed = -5.225
        }
    }
    ready = 0
    alarm[1] = 2
    image_speed = 0.3
    image_index = 0
    if (global.apariencia == 0)
        sprite_index = spr_SMB_spring_end
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_spring_end
    else if (global.apariencia == 2)
        sprite_index = spr_spring_end
    else if (global.apariencia == 3)
        sprite_index = spr_NSMBU_spring_end
    else if (global.apariencia == 4)
    {
        if ((global.bg_level == "catsle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB2_spring_end_night
        else
            sprite_index = spr_SMB2_spring_end
    }
}
else if ((sprite_index == spr_spring_end) || ((sprite_index == spr_SMB3_spring_end) || ((sprite_index == spr_SMB_spring_end) || ((sprite_index == spr_NSMBU_spring_end) || ((sprite_index == spr_SMB2_spring_end) || (sprite_index == spr_SMB2_spring_end_night))))))
{
    image_speed = 0
    image_index = 0
    if (global.apariencia == 0)
        sprite_index = spr_SMB_spring
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_spring
    else if (global.apariencia == 2)
        sprite_index = spr_spring
    else if (global.apariencia == 3)
        sprite_index = spr_NSMBU_spring
    else if (global.apariencia == 4)
    {
        if ((global.bg_level == "catsle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB2_spring_night
        else
            sprite_index = spr_SMB2_spring
    }
}


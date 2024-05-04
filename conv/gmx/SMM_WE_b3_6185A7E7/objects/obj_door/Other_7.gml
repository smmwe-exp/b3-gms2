if ((sprite_index == spr_door) || ((sprite_index == spr_SMB3_door) || ((sprite_index == spr_SMB_door) || ((sprite_index == spr_SMB2_door) || (sprite_index == spr_SMB2_door_night)))))
{
    image_speed = 0
    image_index = 2
}
else if ((sprite_index == spr_door_close) || ((sprite_index == spr_SMB3_door_close) || ((sprite_index == spr_SMB_door_close) || ((sprite_index == spr_SMB2_door_close) || (sprite_index == spr_SMB2_door_close_night)))))
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_door
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_door
    else if (global.apariencia == 2)
        sprite_index = spr_door
    else if (global.apariencia == 3)
        sprite_index = spr_door
    else if (global.apariencia == 4)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
            sprite_index = spr_SMB2_door_night
        else
            sprite_index = spr_SMB2_door
    }
    image_speed = 0
    image_index = 0
    audio_play_sound(scr_snd_door_close(), 0, false)
}


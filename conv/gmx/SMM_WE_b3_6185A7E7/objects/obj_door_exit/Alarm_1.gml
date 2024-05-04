if instance_exists(returndoor)
{
    with (returndoor)
    {
        image_index = 0
        if (global.apariencia == 0)
            sprite_index = spr_SMB_door_close
        else if (global.apariencia == 1)
            sprite_index = spr_SMB3_door_close
        else if (global.apariencia == 2)
            sprite_index = spr_door_close
        else if (global.apariencia == 4)
        {
            if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
                sprite_index = spr_SMB2_door_close_night
            else
                sprite_index = spr_SMB2_door_close
        }
        image_speed = 0.12
    }
}


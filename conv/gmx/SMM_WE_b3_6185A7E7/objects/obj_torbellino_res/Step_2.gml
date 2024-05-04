if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_torbellino
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_torbellino
    else if (global.apariencia == 2)
        sprite_index = spr_torbellino
    else if (global.apariencia == 4)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
            sprite_index = spr_SMB2_twister_night
        else
            sprite_index = spr_SMB2_twister
    }
}


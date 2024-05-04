if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB_bobomb_night_res
        else
            sprite_index = spr_SMB_bobomb_res
    }
    else if (global.apariencia == 1)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB3_bobomb_night_res
        else
            sprite_index = spr_SMB3_bobomb_res
    }
    else if (global.apariencia == 2)
        sprite_index = spr_bobomb_res
    else if (global.apariencia == 4)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB2_bobomb_night_res
        else
            sprite_index = spr_SMB2_bobomb_res
    }
}


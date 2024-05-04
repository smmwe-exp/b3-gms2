if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB_muncher_night_res
        else
            sprite_index = spr_SMB_muncher_res
    }
    else if (global.apariencia == 1)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB3_muncher_night_res
        else
            sprite_index = spr_SMB3_muncher_res
    }
    else if (global.apariencia == 2)
        sprite_index = spr_muncher_res
    else if (global.apariencia == 3)
        sprite_index = spr_NSMBU_muncher_res
}


if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
    {
        if ((global.modo_noche == 1) && (global.bg_level == "ground"))
            sprite_index = spr_SMB_rotten
        else
            sprite_index = spr_SMB_1up
    }
    else if (global.apariencia == 1)
    {
        if ((global.modo_noche == 1) && (global.bg_level == "ground"))
            sprite_index = spr_SMB3_rotten
        else
            sprite_index = spr_SMB3_1up
    }
    else if (global.apariencia == 2)
    {
        if ((global.modo_noche == 1) && (global.bg_level == "ground"))
            sprite_index = spr_rotten
        else
            sprite_index = spr_1up
    }
    else if (global.apariencia == 4)
    {
        if ((global.modo_noche == 1) && (global.bg_level == "ground"))
            sprite_index = spr_SMB2_rotten
        else
        {
            sprite_index = spr_SMB2_1up
            if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
                image_index = 1
        }
    }
}


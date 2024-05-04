if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_mushroom
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_mushroom
    else if (global.apariencia == 2)
        sprite_index = spr_mushroom
    else if (global.apariencia == 3)
        sprite_index = spr_NSMBU_mushroom
    else if (global.apariencia == 4)
    {
        sprite_index = spr_SMB2_mushroom
        if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
            image_index = 1
        else
            image_index = 0
    }
}


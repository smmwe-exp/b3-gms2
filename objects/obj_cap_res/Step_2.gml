if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
    {
        sprite_index = spr_SMB_megamushroom_res
        grid_selected = 3041
        w_sprite = 371
        para_x = -8
        para_y = 32
    }
    else if (global.apariencia == 1)
    {
        sprite_index = spr_SMB3_leaf_res
        grid_selected = 3037
        w_sprite = 2822
        para_x = 0
        para_y = 16
    }
    else if (global.apariencia == 2)
    {
        sprite_index = spr_cap_res
        grid_selected = 3037
        w_sprite = 2822
        para_x = 0
        para_y = 16
    }
    else if (global.apariencia == 4)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
            sprite_index = spr_SMB2_turnip_night_res
        else
            sprite_index = spr_SMB2_turnip_res
        grid_selected = 3037
        w_sprite = 2822
        para_x = 0
        para_y = 16
    }
    image_index = progresivo
}


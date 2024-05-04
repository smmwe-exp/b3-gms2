if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
    {
        if (global.modo_noche == 1)
            sprite_index = spr_SMB_decoracion_2_night
        else
            sprite_index = spr_SMB_decoracion_2
    }
    else if (global.apariencia == 1)
    {
        if (global.modo_noche == 1)
            sprite_index = spr_SMB3_decoracion_2_night
        else
            sprite_index = spr_SMB3_decoracion_2
    }
    else if (global.apariencia == 2)
    {
        if (global.modo_noche == 1)
            sprite_index = spr_decoracion_2_night
        else
            sprite_index = spr_decoracion_2
    }
    else if (global.apariencia == 3)
    {
        if (global.modo_noche == 1)
            sprite_index = spr_NSMBU_decoracion_2_night
        else
            sprite_index = spr_NSMBU_decoracion_2
    }
    else if (global.apariencia == 4)
    {
        if (global.modo_noche == 1)
            sprite_index = spr_SMB2_decoracion_2_night
        else
            sprite_index = spr_SMB2_decoracion_2
    }
    if (global.bg_level == "ground")
        image_index = 0
    else if (global.bg_level == "underground")
        image_index = 1
    else if (global.bg_level == "underwater")
        image_index = 2
    else if (global.bg_level == "desert")
        image_index = 3
    else if (global.bg_level == "snow")
        image_index = 4
    else if (global.bg_level == "sky")
        image_index = 5
    else if (global.bg_level == "forest")
        image_index = 6
    else if (global.bg_level == "ghost")
        image_index = 7
    else if (global.bg_level == "airship")
        image_index = 8
    else if (global.bg_level == "castle")
        image_index = 9
}


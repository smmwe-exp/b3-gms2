if (obj_levelmanager.editor == 1)
{
    event_inherited()
    if (global.apariencia == 0)
    {
        sprite_index = spr_SMB_drybones_res
        para_y = 14
    }
    else if (global.apariencia == 1)
    {
        sprite_index = spr_SMB3_drybones_res
        para_y = 16
    }
    else if (global.apariencia == 2)
    {
        sprite_index = spr_drybones_res
        para_y = 16
    }
}


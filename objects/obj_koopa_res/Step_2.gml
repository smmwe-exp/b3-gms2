if (obj_levelmanager.editor == 1)
{
    event_inherited()
    if (global.apariencia == 0)
    {
        sprite_index = spr_SMB_koopa_res
        para_y = 14
    }
    else if (global.apariencia == 1)
    {
        sprite_index = spr_SMB3_koopa_res
        para_y = 16
    }
    else if (global.apariencia == 2)
    {
        sprite_index = spr_koopa_res
        para_y = 16
    }
    else if (global.apariencia == 3)
    {
        sprite_index = spr_NSMBU_koopa_res
        para_y = 16
    }
}


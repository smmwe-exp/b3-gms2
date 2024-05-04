if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
    {
        sprite_index = spr_SMB_buzzy_shell_res
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            image_index = 1
        else
            image_index = 0
    }
    else if (global.apariencia == 1)
    {
        sprite_index = spr_SMB3_buzzy_shell_res
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            image_index = 1
        else
            image_index = 0
    }
    else if (global.apariencia == 2)
        sprite_index = spr_buzzy_shell_res
}


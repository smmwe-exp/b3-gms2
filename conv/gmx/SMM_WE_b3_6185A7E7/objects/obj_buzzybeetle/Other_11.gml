with (instance_create((x - 8), y, obj_shell))
{
    if (global.apariencia == 0)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB_shell_buzzy_night
        else
            sprite_index = spr_SMB_shell_buzzy
    }
    else if (global.apariencia == 1)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB3_shell_buzzy_night
        else
            sprite_index = spr_SMB3_shell_buzzy
    }
    else if (global.apariencia == 2)
        sprite_index = spr_shell_buzzy
    else if (global.apariencia == 3)
        sprite_index = spr_NSMBU_shell_buzzy
    koopainside = -1
    alarm[3] = 540
    alarm[4] = 640
}
instance_destroy()


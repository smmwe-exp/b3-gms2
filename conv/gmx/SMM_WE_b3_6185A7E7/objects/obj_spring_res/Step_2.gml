event_inherited()
if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_spring
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_spring
    else if (global.apariencia == 2)
        sprite_index = spr_spring
    else if (global.apariencia == 3)
        sprite_index = spr_NSMBU_spring
    else if (global.apariencia == 4)
    {
        if ((global.bg_level == "catsle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB2_spring_night
        else
            sprite_index = spr_SMB2_spring
    }
}


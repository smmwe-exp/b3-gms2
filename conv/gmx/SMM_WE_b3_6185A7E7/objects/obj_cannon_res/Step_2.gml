if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB_cannon_night
        else
            sprite_index = spr_SMB_cannon
    }
    else if (global.apariencia == 1)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB3_cannon_night
        else
            sprite_index = spr_SMB3_cannon
    }
    else if (global.apariencia == 4)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB2_cannon_night
        else
            sprite_index = spr_SMB2_cannon
    }
    else
        sprite_index = spr_cannon
}
image_index = direct
if ((drag == 1) || (mouse_up == 0))
    event_user(15)


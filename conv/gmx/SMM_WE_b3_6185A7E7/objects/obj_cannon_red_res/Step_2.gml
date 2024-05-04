if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_cannon_red
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_cannon_red
    else if (global.apariencia == 4)
        sprite_index = spr_SMB2_cannon_red
    else
        sprite_index = spr_cannon_red
}
image_index = direct
if ((drag == 1) || (mouse_up == 0))
    event_user(15)


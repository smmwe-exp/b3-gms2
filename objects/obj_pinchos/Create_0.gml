image_speed = 0.1
if (global.apariencia == 0)
{
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        sprite_index = spr_SMB_pinchos_ice
    else if (global.bg_level == "snow")
        sprite_index = spr_SMB_pinchos_snow
    else if (global.bg_level == "castle")
        sprite_index = spr_SMB_pinchos_dark
    else if ((global.bg_level == "underground") || (global.bg_level == "ghost"))
        sprite_index = spr_SMB_pinchos_night
    else
        sprite_index = spr_SMB_pinchos
}
else if (global.apariencia == 1)
{
    if (global.bg_level == "underwater")
        sprite_index = spr_SMB3_pinchos_swin
    else if ((global.bg_level == "snow") && (global.modo_noche == 1))
        sprite_index = spr_SMB3_pinchos_ice
    else if (global.bg_level == "castle")
        sprite_index = spr_SMB3_pinchos_dark
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = spr_SMB3_pinchos_night
    else
        sprite_index = spr_SMB3_pinchos
}
else if (global.apariencia == 2)
{
    if (global.bg_level == "underwater")
        sprite_index = spr_pinchos_swin
}
else if (global.apariencia == 3)
{
    if ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1)))
        sprite_index = spr_NSMBU_pinchos_night
    else
        sprite_index = spr_NSMBU_pinchos
}
else if (global.apariencia == 4)
{
    if (global.bg_level == "underwater")
    {
        sprite_index = spr_SMB2_pinchos_underwater
        if (global.modo_noche == 1)
            image_index = 1
        else
            image_index = 0
        image_speed = 0
    }
    else if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_pinchos_night
    else
        sprite_index = spr_SMB2_pinchos
}
mysolid = 0
alarm[0] = 15


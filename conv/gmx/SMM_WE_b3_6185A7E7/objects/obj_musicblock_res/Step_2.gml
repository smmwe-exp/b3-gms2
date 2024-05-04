if (global.apariencia == 0)
{
    sprite_index = spr_SMB_musicblock
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        image_index = 4
    else if (global.bg_level == "snow")
        image_index = 3
    else if (global.bg_level == "castle")
        image_index = 2
    else if ((global.bg_level == "underground") || (global.bg_level == "ghost"))
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 1)
{
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        sprite_index = spr_SMB3_musicblock
    else if (global.bg_level == "castle")
        sprite_index = spr_SMB3_musicblock
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = spr_SMB3_musicblock
    else
        sprite_index = spr_SMB3_musicblock
    image_index = 0
}
else if (global.apariencia == 2)
{
    sprite_index = spr_musicblock
    image_index = 0
}
else if (global.apariencia == 4)
{
    image_speed = 0
    image_index = 0
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_musicblock_night
    else
        sprite_index = spr_SMB2_musicblock
}


if (global.apariencia == 0)
{
    if (global.bg_level == "castle")
        sprite_index = spr_SMB_coin_dark
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = spr_SMB_coin_night
    else
        sprite_index = spr_SMB_coin
}
else if (global.apariencia == 1)
{
    if (global.bg_level == "castle")
        sprite_index = spr_SMB3_coin_dark
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = spr_SMB3_coin_night
    else
        sprite_index = spr_SMB3_coin
}
else if (global.apariencia == 1)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_coin_night
    else
        sprite_index = spr_SMB2_coin
}
image_speed = 0.15
modo_lava = 0
swimming = 0
alarm[0] = 180
alarm[1] = 300


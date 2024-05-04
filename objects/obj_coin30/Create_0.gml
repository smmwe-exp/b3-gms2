if (global.apariencia == 0)
{
    s_SMB3_10 = spr_SMB_coin_30
    s_SMB3_10_2 = spr_SMB_coin_30_night
    s_SMB3_10_3 = spr_SMB_coin_30_dark
}
else if (global.apariencia == 1)
{
    s_SMB3_10 = spr_SMB3_coin_30
    s_SMB3_10_2 = spr_SMB3_coin_30_night
    s_SMB3_10_3 = spr_SMB3_coin_30_dark
}
s_SMW_10 = 2168
if ((global.apariencia == 0) || (global.apariencia == 1))
{
    if (global.bg_level == "catsle")
        sprite_index = s_SMB3_10_3
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = s_SMB3_10_2
    else
        sprite_index = s_SMB3_10
}
else if (global.apariencia == 3)
    sprite_index = spr_NSMBU_coin_30
else if (global.apariencia == 4)
{
    if ((global.bg_level == "catsle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_coin_30_night
    else
        sprite_index = spr_SMB2_coin_30
}
image_speed = 0.15


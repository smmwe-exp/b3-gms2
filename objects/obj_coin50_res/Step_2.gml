if (global.apariencia == 0)
{
    if (global.bg_level == "catsle")
        sprite_index = spr_SMB_coin_50_dark
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = spr_SMB_coin_50_night
    else
        sprite_index = spr_SMB_coin_50
}
else if (global.apariencia == 1)
{
    if (global.bg_level == "catsle")
        sprite_index = spr_SMB3_coin_50_dark
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = spr_SMB3_coin_50_night
    else
        sprite_index = spr_SMB3_coin_50
}
else if (global.apariencia == 2)
    sprite_index = spr_coin_50
else if (global.apariencia == 3)
    sprite_index = spr_NSMBU_coin_50
else if (global.apariencia == 4)
{
    if ((global.bg_level == "catsle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_coin_50_night
    else
        sprite_index = spr_SMB2_coin_50
}


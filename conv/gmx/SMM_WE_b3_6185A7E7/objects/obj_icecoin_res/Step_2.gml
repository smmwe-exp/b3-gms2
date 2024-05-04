if (global.apariencia == 0)
    sprite_index = spr_SMB_ice_coin
else if (global.apariencia == 1)
{
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        sprite_index = spr_SMB3_ice_coin_ice
    else if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB3_ice_coin_night
    else
        sprite_index = spr_SMB3_ice_coin
}
else
    sprite_index = spr_ice_coin


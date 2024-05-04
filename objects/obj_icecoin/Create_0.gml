if (global.apariencia == 0)
{
    sprite_index = spr_SMB_ice_coin
    shard = 425
}
else if (global.apariencia == 1)
{
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        sprite_index = spr_SMB3_ice_coin_ice
    else if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB3_ice_coin_night
    else
        sprite_index = spr_SMB3_ice_coin
    shard = 1144
}
else
    shard = 1743
image_speed = 0.15
wings = 0
wings_anim = 0
if (global.apariencia == 0)
    sprite_wings = 370
else if (global.apariencia == 1)
    sprite_wings = 1064
else
    sprite_wings = 1928
alarm[10] = 4


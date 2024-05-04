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
else if (global.apariencia == 3)
    sprite_index = spr_NSMBU_coin
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_coin_night
    else
        sprite_index = spr_SMB2_coin
}
if (global.apariencia == 3)
    image_speed = 0.3
else
    image_speed = 0.15
convertirse = 1
wings = 0
wings_anim = 0
paracaidas = 0
if (global.apariencia == 0)
    sprite_wings = 370
else if (global.apariencia == 1)
    sprite_wings = 1064
else
    sprite_wings = 1928
alarm[10] = 4


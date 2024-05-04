if (global.apariencia == 0)
{
    sprite_index = spr_SMB_star
    sprite_wings = 370
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_star
    sprite_wings = 1064
}
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_star_night
    else
        sprite_index = spr_SMB2_star
    sprite_wings = 1928
}
else
    sprite_wings = 1928
swimming = 0
wings = 0
wings_anim = 0
paracaidas = 0
image_speed = 0.3
alarm[10] = 2


if (global.apariencia == 4)
{
    if ((global.bg_level == "catsle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_spring_land_night
    else
        sprite_index = spr_SMB2_spring_land
    image_index = 0
}
else
{
    sprite_index = spr_spring_land_res
    image_index = global.apariencia
}


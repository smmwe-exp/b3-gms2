if ((sprite_index == spr_spring_land) || ((sprite_index == spr_SMB3_spring_land) || ((sprite_index == spr_SMB_spring_land) || ((sprite_index == spr_SMB2_spring_land) || (sprite_index == spr_SMB2_spring_land_night)))))
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_spring_land_end
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_spring_land_end
    else if (global.apariencia == 2)
        sprite_index = spr_spring_land_end
    else if (global.apariencia == 4)
    {
        if ((global.bg_level == "catsle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB2_spring_land_end_night
        else
            sprite_index = spr_SMB2_spring_land_end
    }
    image_speed = 0.6
}
else if ((sprite_index == spr_spring_land_end) || ((sprite_index == spr_SMB3_spring_land_end) || ((sprite_index == spr_SMB_spring_land_end) || ((sprite_index == spr_SMB2_spring_land_end) || (sprite_index == spr_SMB2_spring_land_end_night)))))
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_spring_land
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_spring_land
    else if (global.apariencia == 2)
        sprite_index = spr_spring_land
    else if (global.apariencia == 4)
    {
        if ((global.bg_level == "catsle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB2_spring_land_night
        else
            sprite_index = spr_SMB2_spring_land
    }
    image_speed = 0
    image_index = 0
}


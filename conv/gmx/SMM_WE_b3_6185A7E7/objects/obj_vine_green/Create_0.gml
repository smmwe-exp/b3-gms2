if (global.apariencia == 0)
    sprite = 639
else if (global.apariencia == 1)
    sprite = 1370
else if (global.apariencia == 2)
    sprite = 1959
else if (global.apariencia == 3)
{
    if (global.bg_level == "castle")
        sprite_index = spr_NSMBU_vine_castle
    else if (global.bg_level == "ghost")
        sprite_index = spr_NSMBU_vine_ghost
    else if ((global.bg_level == "underground") || (global.modo_noche == 1))
        sprite_index = spr_NSMBU_vine_castle
    else
        sprite_index = spr_NSMBU_vine_overworld
}
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_vine_night
    else
        sprite_index = spr_SMB2_vine
}
mask_index = spr_square
index = 0
size_y = 3
image_speed = 0


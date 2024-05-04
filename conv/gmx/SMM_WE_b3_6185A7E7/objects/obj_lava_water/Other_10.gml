if (global.apariencia == 0)
{
    if ((global.modo_noche == 1) && (global.bg_level == "forest"))
        sprite_index = spr_SMB_lava_purple
    else if (global.bg_level == "forest")
        sprite_index = spr_SMB_water
    else if (global.bg_level == "castle")
        sprite_index = spr_SMB_lava
}
else if (global.apariencia == 1)
{
    if ((global.modo_noche == 1) && (global.bg_level == "forest"))
        sprite_index = spr_SMB3_lava_purple
    else if (global.bg_level == "forest")
        sprite_index = spr_SMB3_water
    else if (global.bg_level == "castle")
        sprite_index = spr_SMB3_lava
}
else if (global.apariencia == 2)
{
    if ((global.modo_noche == 1) && (global.bg_level == "forest"))
        sprite_index = spr_lava_purple
    else if (global.bg_level == "forest")
        sprite_index = spr_water
    else if (global.bg_level == "castle")
        sprite_index = spr_lava
}
else if (global.apariencia == 3)
{
    if ((global.modo_noche == 1) && (global.bg_level == "forest"))
        sprite_index = spr_lava_purple
    else if (global.bg_level == "forest")
        sprite_index = spr_water
    else if (global.bg_level == "castle")
        sprite_index = spr_lava
}
else if (global.apariencia == 4)
{
    if ((global.modo_noche == 1) && (global.bg_level == "forest"))
        sprite_index = spr_SMB2_lava_purple
    else if (global.bg_level == "forest")
        sprite_index = spr_SMB2_water
    else if (global.bg_level == "castle")
        sprite_index = spr_SMB2_lava
}


if (global.apariencia == 0)
    sprite_index = spr_SMB_pblock
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_pblock
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_pblock_night
    else
        sprite_index = spr_SMB2_pblock
}
image_speed = 0
image_index = 1
mysolid = 0
obj_generador = 0


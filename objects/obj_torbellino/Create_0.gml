if (global.apariencia == 0)
    sprite_index = spr_SMB_torbellino
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_torbellino
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_twister_night
    else
        sprite_index = spr_SMB2_twister
}
image_speed = 0.1
swimming = 0
bortice = 0
alarm[0] = 5
alarm[10] = 1

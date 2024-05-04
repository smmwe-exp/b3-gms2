if (global.apariencia == 0)
    sprite_index = spr_SMB_door
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_door
else if (global.apariencia == 3)
    sprite_index = spr_door
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_door_night
    else
        sprite_index = spr_SMB2_door
}
image_speed = 0
image_index = 0
returndoor = 0
back = -4
time_blow = 0


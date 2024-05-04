if (global.apariencia == 0)
    sprite_index = spr_SMB_estalactita
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_estalactita
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_estalactita_night
    else
        sprite_index = spr_SMB2_estalactita
}
image_speed = 0
image_index = 1
crecer = 0
rotacion = 0
rot = 0
up = 0
caer = 0
borrar = 0
alarm[2] = 120


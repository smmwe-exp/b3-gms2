if (global.apariencia == 0)
    sprite_index = spr_SMB_goomba2
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_goomba2
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_pinkshyguy_night
    else
        sprite_index = spr_SMB2_pinkshyguy
}
search_mario = 0
hardness = 0
stomp = 0
direct = -1
edible = 1
wings = 0
paracaidas = 0
para_rot = 0
key = 0
jumping = 0
anim = 0
big = 0
innave = 0
dead_h = 0
swimming = 0
modo_lava = 0
apilar = 0
cambio_gombaya = 0
alarm[10] = 2
alarm[0] = 120
image_speed = 0.15


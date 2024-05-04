if (global.apariencia == 0)
    sprite_index = spr_SMB_cannonball
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_cannonball
else if (global.apariencia == 4)
    sprite_index = spr_SMB2_cannonball
if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    image_index = 1
else
    image_index = 0
image_speed = 0
hardness = 1
stomp = 0
edible = 0
direct = 1
apilar = 0
alarm[0] = 15


if (global.apariencia == 0)
    sprite_index = spr_SMB_bulletbill
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_bulletbill
else if (global.apariencia == 4)
    sprite_index = spr_SMB2_bulletbill
image_speed = 0
if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    image_index = 1
else
    image_index = 0
hardness = 1
stomp = 0
edible = 0
direct = -1
dead_h = 0
wings = 0
w_wings = 0
swimming = 0
modo_lava = 0
apilar = 0
obj_apilar = ""
obj_apilar_wings = 0
apilado = 0
my_apilar = 0
alarm[0] = 15
alarm[1] = 10


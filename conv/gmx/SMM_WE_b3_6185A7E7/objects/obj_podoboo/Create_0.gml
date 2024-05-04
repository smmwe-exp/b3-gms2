if (global.apariencia == 0)
    sprite_index = spr_SMB_podoboo
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_podoboo
else if (global.apariencia == 2)
    sprite_index = spr_podoboo
else
    sprite_index = spr_SMB_podoboo
hardness = 100
stomp = 2
edible = 1
modo_lava = 0
direct = 1
ready = 0
dead_h = 0
big = 0
swimming = 0
obj_generador = 0
innave = 0
wings = 0
w_wings = 0
apilar = 0
image_speed = 0.2
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (instance_exists(obj_lava_water) && ((y >= obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    gravity = 0.1
else
    gravity = 0.2


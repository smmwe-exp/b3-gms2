if (global.apariencia == 0)
    sprite_index = spr_SMB_onoffblock_on
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_onoffblock_on
else if (global.apariencia == 3)
    sprite_index = spr_NSMBU_onoffblock_on
else if (global.apariencia == 4)
    sprite_index = spr_SMB2_onoffblock_on
image_speed = 0.09
ready = 0
mysolid = instance_create(x, y, obj_solid)
obj_generador = 0
wings = 0
w_wings = 0
enable = 0


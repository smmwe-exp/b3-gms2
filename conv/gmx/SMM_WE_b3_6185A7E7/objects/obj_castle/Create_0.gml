if (global.apariencia == 0)
    sprite_index = spr_SMB_castle_dooropen
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_castle_dooropen
else if (global.apariencia == 3)
    sprite_index = spr_NSMBU_castle_dooropen
else if (global.apariencia == 4)
    sprite_index = spr_SMB2_castle_dooropen
image_speed = 0
image_index = 0
instance_create((x + 48), y, obj_castle_front)


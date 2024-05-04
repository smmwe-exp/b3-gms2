if (global.apariencia == 0)
    sprite_index = spr_SMB_pswitch_pressed
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_pswitch_pressed
else if (global.apariencia == 3)
    sprite_index = spr_NSMBU_pswitch_press
else if (global.apariencia != 2)
    sprite_index = spr_SMB_pswitch_pressed
alarm[0] = 9
swimming = 0
modo_lava = 0
mytop = instance_create(x, y, obj_solidtop)


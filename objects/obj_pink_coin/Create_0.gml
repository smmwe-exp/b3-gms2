if (global.checkpointroom != -4)
{
    if (((global.pink_coin1_x == x) && (global.pink_coin1_y == y)) || (((global.pink_coin2_x == x) && (global.pink_coin2_y == y)) || (((global.pink_coin3_x == x) && (global.pink_coin3_y == y)) || (((global.pink_coin4_x == x) && (global.pink_coin4_y == y)) || (((global.pink_coin5_x == x) && (global.pink_coin5_y == y)) || (((global.pink_coin6_x == x) && (global.pink_coin6_y == y)) || (((global.pink_coin7_x == x) && (global.pink_coin7_y == y)) || (((global.pink_coin8_x == x) && (global.pink_coin8_y == y)) || (((global.pink_coin9_x == x) && (global.pink_coin9_y == y)) || ((global.pink_coin10_x == x) && (global.pink_coin10_y == y)))))))))))
        instance_destroy()
}
if (global.apariencia == 0)
    sprite_index = spr_SMB_pink_coin
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_pink_coin
else if (global.apariencia == 4)
    sprite_index = spr_SMB2_pink_coin
image_speed = 0.15
if (obj_levelmanager.editor == 0)
    alarm[0] = 1
lock = 0


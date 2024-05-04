image_speed = 0
image_index = 0
ready = 0
ready2 = 0
castle_pech = 0
flower = 0
anim_nubes = 0
if ((global.DSM_level >= 0) && (global.DSM_level < 5))
    world = 1
else if ((global.DSM_level > 4) && (global.DSM_level < 9))
    world = 2
else if ((global.DSM_level > 8) && (global.DSM_level < 13))
    world = 3
else
    world = 4


sprite_index = spr_charginchuck_walk
image_speed = 0.5
friction = 0
alarm[0] = 6
if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
    hspeed = -1.75
else
    hspeed = 1.75


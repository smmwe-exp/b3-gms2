if (hspeed == 0)
{
    if ((!instance_exists(obj_playerparent)) || (obj_playerparent.x < x))
        hspeed = -0.5
    else
        hspeed = 0.5
}
alarm[1] = 180
alarm[11] = 60
image_speed = 0.3
sprite_index = spr_blastakoopa


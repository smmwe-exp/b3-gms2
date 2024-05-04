herido = 1
if (global.apariencia == 1)
{
    alarm[0] = -1
    alarm[5] = -1
    alarm[3] = -1
    alarm[10] = -1
    sprite_index = spr_SMB3_bowser_deads
    image_speed = 0.15
}
else if (global.apariencia == 2)
{
    alarm[0] = -1
    alarm[5] = -1
    alarm[3] = -1
    sprite_index = spr_bowser_walk
    image_speed = 0.15
}
vspeed = -2
if (obj_mario.x < x)
{
    hspeed = 3.5
    direct = 1
}
else
{
    hspeed = -3.5
    direct = -1
}


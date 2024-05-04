if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_mario_small_dead2
    image_index = 0
    image_speed = 0.6
    gravity = 0.15
    vspeed = -3.125
}
else
{
    image_speed = 0.15
    gravity = 0.2
    vspeed = -3.5
}
if ((global.apariencia == 0) || (global.apariencia == 1))
    alarm[1] = 160
else if ((global.apariencia == 2) || ((global.apariencia == 3) || (global.apariencia == 4)))
    alarm[1] = 120


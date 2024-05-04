if (global.apariencia == 0)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite = 361
    else
        sprite = 360
}
else if (global.apariencia == 1)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite = 1034
    else
        sprite = 1033
}
else if (global.apariencia == 2)
    sprite = 1858
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite = 3591
    else
        sprite = 3590
}
wings = 0
w_wings = 0
direct = 1
dead_h = 0
apilar = 0
swimming = 0
modo_lava = 0
sprout = 0
shoot_right = 0
shoot_left = 0
index = 0
size_y = 3
image_speed = 0
alarm[0] = 90
solidtop = 0
alarm[1] = 1


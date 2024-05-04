if (global.apariencia != 2)
{
    if (global.apariencia == 0)
        imagen = 327
    else
        imagen = 1057
    image_speed = 0
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sud_imagen = 1
    else
        sud_imagen = 0
}
else if (global.apariencia == 2)
{
    imagen = 1816
    image_speed = 0
    sud_imagen = 0
    if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || ((global.bg_level == "airship") && (global.modo_noche == 1))))
        vspeed = -1
    else
        vspeed = -2.5
}
s_part = 2586
fisica = 0
direct_spike = -1
angle = 0
ready = 0
enemy_dead = 0
swimming = 0
modo_lava = 0


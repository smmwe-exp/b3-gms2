if (global.apariencia == 0)
{
    sprite_index = spr_SMB_donut
    s_donut = 513
    s_donut_fall = 514
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        image_index = 5
    else if (global.bg_level == "snow")
        image_index = 4
    else if (global.bg_level == "castle")
        image_index = 3
    else if (global.bg_level == "underwater")
        image_index = 2
    else if ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1)))
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_donut
    s_donut = 1234
    s_donut_fall = 1235
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        image_index = 3
    else if (global.bg_level == "castle")
        image_index = 2
    else if ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1)))
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 2)
{
    s_donut = 2024
    s_donut_fall = 2025
    image_index = 0
}
else if (global.apariencia == 3)
{
    s_donut = 3228
    s_donut_fall = 3229
    image_index = 0
}
else if (global.apariencia == 4)
{
    sprite_index = spr_SMB2_donut
    s_donut = 3622
    s_donut_fall = 3623
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        image_index = 1
    else
        image_index = 0
}
image_speed = 0
shake = 0
borrar = 0
crecer = 0
return_wings = 0
ready = 0
wings = 0
wings_anim = 0
if (global.apariencia == 0)
    sprite_wings = 370
else if (global.apariencia == 1)
    sprite_wings = 1064
else
    sprite_wings = 1928
alarm[10] = 4


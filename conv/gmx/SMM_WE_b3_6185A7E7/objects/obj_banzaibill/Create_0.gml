if (global.apariencia == 0)
{
    sprite_index = spr_SMB_banzaibill
    image_speed = 0
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_banzaibill
    image_speed = 0
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 2)
    image_speed = 0
else if (global.apariencia == 4)
{
    sprite_index = spr_SMB2_banzaibill
    image_speed = 0
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        image_index = 1
    else
        image_index = 0
}
direct_t = 1
hardness = 99
stomp = 0
edible = 2
direct = 1
rotacion = 0
dead_h = 0
wings = 0
w_wings = 0
apilar = 0
obj_apilar = ""
obj_apilar_wings = 0
apilado = 0
my_apilar = 0
obj_generador = 0
swimming = 0
big = 0
alarm[10] = 1
if (global.apariencia != 0)
    alarm[0] = 15


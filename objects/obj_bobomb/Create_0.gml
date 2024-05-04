if (global.apariencia == 0)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    {
        sprite_index = spr_SMB_bobomb_night
        night_sprite = 1
    }
    else
    {
        sprite_index = spr_SMB_bobomb
        night_sprite = 0
    }
    sprite_wings = 369
}
else if (global.apariencia == 1)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    {
        sprite_index = spr_SMB3_bobomb_night
        night_sprite = 1
    }
    else
    {
        sprite_index = spr_SMB3_bobomb
        night_sprite = 0
    }
    sprite_wings = 1061
}
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    {
        sprite_index = spr_SMB2_bobomb_night
        night_sprite = 1
    }
    else
    {
        sprite_index = spr_SMB2_bobomb
        night_sprite = 0
    }
    sprite_wings = 1061
}
else
{
    sprite_wings = 1926
    night_sprite = 0
}
destroy_door = 0
hardness = 1
stomp = 0
edible = 0
direct = -1
dead_h = 0
modo_lava = 0
wings = 0
wings_anim = 0
paracaidas = 0
swimming = 0
time_blow = 0
s_bobomb = 1853
can_wings_deads = 1
apilar = 0
obj_apilar = ""
obj_apilar_wings = 0
apilado = 0
my_apilar = 0
alarm[10] = 2
image_speed = 0.15


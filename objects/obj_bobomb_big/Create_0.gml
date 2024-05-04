if (global.apariencia == 1)
{
    if ((__background_get( e__BG.Index, 0 ) == scr_bg_castle()) || ((__background_get( e__BG.Index, 0 ) == scr_bg_ghost_house()) || (__background_get( e__BG.Index, 0 ) == scr_bg_underground())))
        sprite_index = spr_SMB3_bobomb_night
    else
        sprite_index = spr_SMB3_bobomb
}
hardness = 1
stomp = 0
edible = 0
direct = -1
dead_h = 0
modo_lava = 0
wings = 0
w_wings = 0
obj_generador = 0
swimming = 0
time_blow = 0
big = 0
s_bobomb = 1853
apilar = 0
obj_apilar = ""
obj_apilar_wings = 0
apilado = 0
my_apilar = 0
alarm[10] = 2
image_speed = 0.15


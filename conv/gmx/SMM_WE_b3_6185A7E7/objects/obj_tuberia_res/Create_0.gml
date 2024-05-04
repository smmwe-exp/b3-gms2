event_inherited()
position_world_x = 0
position_world_y = 0
if (global.position_world_x != 0)
{
    position_world_x = global.position_world_x
    position_world_y = global.position_world_y
    global.position_world_x = 0
    global.position_world_y = 0
}
alarm[4] = 15
if (global.apariencia == 0)
{
    s_tuberia_0 = spr_tuberias
    s_tuberia_1 = 2236
    s_tuberia_2 = 2237
    s_tuberia_3 = 2238
    s_tuberia_4 = 2239
    s_tuberia_5 = 2240
    s_tuberia_6 = 2241
}
else if (global.apariencia == 1)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    {
        s_tuberia_0 = 1296
        s_tuberia_1 = 1297
        s_tuberia_2 = 1298
        s_tuberia_3 = 1299
        s_tuberia_4 = 1300
        s_tuberia_5 = 1301
        s_tuberia_6 = 1302
    }
    else
    {
        s_tuberia_0 = 1289
        s_tuberia_1 = 1290
        s_tuberia_2 = 1291
        s_tuberia_3 = 1292
        s_tuberia_4 = 1293
        s_tuberia_5 = 1294
        s_tuberia_6 = 1295
    }
}
else if (global.apariencia == 2)
{
    s_tuberia_0 = 2235
    s_tuberia_1 = 2236
    s_tuberia_2 = 2237
    s_tuberia_3 = 2238
    s_tuberia_4 = 2239
    s_tuberia_5 = 2240
    s_tuberia_6 = 2241
}
else if (global.apariencia == 3)
{
    s_tuberia_0 = 3240
    s_tuberia_1 = 3241
    s_tuberia_2 = 3242
    s_tuberia_3 = 3243
    s_tuberia_4 = 3244
    s_tuberia_5 = 3245
    s_tuberia_6 = 3246
}
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    {
        s_tuberia_0 = 3729
        s_tuberia_1 = 3730
        s_tuberia_2 = 3731
        s_tuberia_3 = 3732
        s_tuberia_4 = 3733
        s_tuberia_5 = 3734
        s_tuberia_6 = 3735
    }
    else
    {
        s_tuberia_0 = 3722
        s_tuberia_1 = 3723
        s_tuberia_2 = 3724
        s_tuberia_3 = 3725
        s_tuberia_4 = 3726
        s_tuberia_5 = 3727
        s_tuberia_6 = 3728
    }
}
else
{
    s_tuberia_0 = 2235
    s_tuberia_1 = 2236
    s_tuberia_2 = 2237
    s_tuberia_3 = 2238
    s_tuberia_4 = 2239
    s_tuberia_5 = 2240
    s_tuberia_6 = 2241
}
sprite_index = s_tuberia_0
grid_selected = 2210
mask_index = spr_mask_tuberias_up_0
color = global.tuberia
R = 0
rotacion = 0
poder_girar = 0
direct_t = 0
positivo = 0
negativo = 0
anim = 0
crecer = 0
anim_mario = 0
anim_m = 0
anim_walk = 0
ready = 0
direct_mario = 1
draw_p = 0
size = 0
pos_cal = 1
alarm[5] = 15


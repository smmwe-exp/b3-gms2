if (global.apariencia == 0)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB_cannon_night
    else
        sprite_index = spr_SMB_cannon
}
else if (global.apariencia == 1)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB3_cannon_night
    else
        sprite_index = spr_SMB3_cannon
}
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_cannon_night
    else
        sprite_index = spr_SMB2_cannon
}
direct = 0
u = 0
d = 0
l = 0
r = 0
alarm[0] = 90
calcular = 0
alarm[1] = 10
mytop = instance_create(x, y, obj_solidtop)


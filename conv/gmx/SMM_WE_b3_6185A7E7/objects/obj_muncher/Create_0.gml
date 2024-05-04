if (global.apariencia == 0)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB_muncher_night
    else
        sprite_index = spr_SMB_muncher
}
else if (global.apariencia == 1)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB3_muncher_night
    else
        sprite_index = spr_SMB3_muncher
}
else if (global.apariencia == 2)
    sprite_index = spr_muncher
else if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_muncher
    image_speed = 0.3
}
else if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    sprite_index = spr_SMB_muncher_night
else
    sprite_index = spr_SMB_muncher
if (global.apariencia != 3)
    image_speed = 0.1
wings = 0
direct = -1
dead_h = 0
apilar = 0
mebelow = -4
swimming = 0
modo_lava = 0
mytop = instance_create((x - 7), (y + 1), obj_solidtop)
mytop.image_xscale = 0.8
mytop.image_yscale = 0.8


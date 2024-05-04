event_inherited()
if (global.apariencia == 0)
    sprite_index = spr_SMB_pow
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_pow
else if (global.apariencia == 3)
    sprite_index = spr_NSMBU_pow
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_pow_night
    else
        sprite_index = spr_SMB2_pow
}
if (global.apariencia == 3)
    image_speed = 0.3
else
    image_speed = 0.15
explode = 0
inmune = 0
mytop = instance_create(x, y, obj_solidtop)


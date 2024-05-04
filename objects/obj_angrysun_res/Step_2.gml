if (global.apariencia == 0)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB_happymoon
    else
        sprite_index = spr_SMB_angrysun
}
else if (global.apariencia == 1)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB3_happymoon
    else
        sprite_index = spr_SMB3_angrysun
}
else if (global.apariencia == 2)
{
    if (global.modo_noche == 1)
        sprite_index = spr_happymoon
    else
        sprite_index = spr_angrysun
}
else if (global.apariencia == 3)
{
    if (global.modo_noche == 1)
        sprite_index = spr_NSMBU_happymoon
    else
        sprite_index = spr_NSMBU_angrysun_idle
}
else if (global.modo_noche == 1)
    sprite_index = spr_SMB_happymoon
else
    sprite_index = spr_SMB_angrysun


imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = direct
if (global.apariencia == 0)
    imdead.sprite_index = spr_SMB_angrysun_deads
if (global.apariencia == 1)
    imdead.sprite_index = spr_SMB3_angrysun_deads
else if (global.apariencia == 2)
    imdead.sprite_index = spr_angrysun_deads
else if (global.apariencia == 3)
    imdead.sprite_index = spr_NSMBU_angrysun_deads
if (dead_h == 0)
{
    if ((other.hspeed == 0) && (direct == 1))
        imdead.hspeed = 1
    else if ((other.hspeed == 0) && (direct == -1))
        imdead.hspeed = -1
}
instance_destroy()


imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
if (global.apariencia == 0)
    imdead.sprite_index = spr_SMB_sledgebro
else if (global.apariencia == 1)
    imdead.sprite_index = spr_SMB3_sledgebro_deads
else if (global.apariencia == 2)
    imdead.sprite_index = spr_sledgebro_deads
else
    imdead.sprite_index = spr_SMB_sledgebro
imdead.direct = direct
if (dead_h == 0)
{
    if (other.hspeed == 0)
    {
        if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
            imdead.hspeed = 1
        else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            imdead.hspeed = -1
    }
    else if (other.hspeed > 0)
        imdead.hspeed = 1
    else if (other.hspeed < 0)
        imdead.hspeed = -1
}
else
{
    imdead.hspeed = 0
    with (instance_create(imdead.x, (imdead.y - 5), obj_smoke))
        sprite_index = spr_spinthump
}
instance_destroy()


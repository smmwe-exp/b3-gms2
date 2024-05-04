imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.girar = 1
if (global.apariencia == 0)
    imdead.sprite_index = spr_SMB_bobomb_hold_deads
else if (global.apariencia == 1)
    imdead.sprite_index = spr_SMB3_bobomb_hold_deads
else if (global.apariencia == 2)
    imdead.sprite_index = spr_bobomb_hold_deads
else if (global.apariencia == 4)
    imdead.sprite_index = spr_SMB2_bobomb_hold_deads
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
instance_destroy()


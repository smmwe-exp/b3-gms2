imdead = instance_create((x + 8), (y + 8), obj_enemy_dead)
imdead.girar = 1
if (global.apariencia == 0)
    imdead.sprite_index = spr_SMB_cannon_deads
else if (global.apariencia == 1)
    imdead.sprite_index = spr_SMB3_cannon_deads
else if (global.apariencia == 2)
    imdead.sprite_index = spr_cannon_deads
if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    imdead.image_index = 1
else
    imdead.image_index = 0
imdead.image_speed = 0
if ((direct == 0) || ((direct == 45) || ((direct == 90) || (direct == 315))))
    imdead.direct = 1
else
    imdead.direct = -1
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


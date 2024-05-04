imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
if (object_index == obj_clown_fire)
{
    if (global.apariencia == 0)
        imdead.sprite_index = spr_SMB_clown_fire
    else if (global.apariencia == 1)
        imdead.sprite_index = spr_SMB3_clown_fire
    else
        imdead.sprite_index = spr_clown_fire
}
else if (global.apariencia == 0)
    imdead.sprite_index = spr_SMB_clown
else if (global.apariencia == 1)
    imdead.sprite_index = spr_SMB3_clown
else
    imdead.sprite_index = spr_clown
imdead.image_speed = 0
imdead.image_index = 0
imdead.direct = direct
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


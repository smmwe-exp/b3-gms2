imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
imdead.direct = 1
if ((global.apariencia == 0) || (global.apariencia == 1))
{
    imdead.sprite_index = sprite_index
    imdead.image_speed = 0
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        imdead.image_index = 1
    else
        imdead.image_index = 0
}
else if (global.apariencia == 2)
    imdead.sprite_index = sprite_index
imdead.direct_y = direct
if (dead_h == 0)
{
    if (other.hspeed == 0)
    {
        if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
            imdead.hspeed = 1
        else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            imdead.hspeed = -1
    }
    if (other.hspeed > 0)
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


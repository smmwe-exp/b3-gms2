imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.girar = 1
imdead.direct = direct
if (sprite_index == spr_beachkoopa_red)
    imdead.sprite_index = s_beachkoopa2_deads
else if (sprite_index == spr_beachkoopa_walk_red)
    imdead.sprite_index = s_beachkoopa_deads
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


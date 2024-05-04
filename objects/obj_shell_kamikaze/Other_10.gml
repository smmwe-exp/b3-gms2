imdead = instance_create((x + 8), (y + 8), obj_enemy_dead)
imdead.girar = 1
if (global.apariencia == 1)
    imdead.sprite_index = spr_SMB3_shell_kamikaze_deads
else if (global.apariencia == 2)
    imdead.sprite_index = spr_shell_kamikaze_deads
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


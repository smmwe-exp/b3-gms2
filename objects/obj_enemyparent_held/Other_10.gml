if (held == 1)
{
    with (obj_mario)
    {
        holding = 0
        isduckhold = 0
    }
}
imdead = instance_create(x, y, obj_enemy_dead)
imdead.sprite_index = sprite_index
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


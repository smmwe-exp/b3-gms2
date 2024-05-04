imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.girar = 1
imdead.direct = direct
if (global.apariencia == 0)
    imdead.sprite_index = spr_SMB_spike_deads
else if (global.apariencia == 1)
    imdead.sprite_index = spr_SMB3_spike_deads
else if (global.apariencia == 2)
    imdead.sprite_index = spr_spike_deads
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
if ((global.bg_level != "snow") && ((ball == 0) && ((sprite_index == spr_spike_atack) || ((sprite_index == spr_spike_atack_snow) || ((sprite_index == spr_SMB3_spike_atack) || ((sprite_index == spr_SMB3_spike_atack_night) || ((sprite_index == spr_SMB_spike_atack) || (sprite_index == spr_SMB_spike_atack_night))))))))
    event_user(7)
instance_destroy()


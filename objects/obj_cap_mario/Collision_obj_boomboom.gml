if instance_exists(obj_mario)
{
    if ((other.bbox_bottom < ((obj_mario.bbox_top - obj_mario.vspeed) + 5)) && (other.vspeed > 0))
        exit
    else if ((obj_mario.caped == 1) && ((sprite_index == spr_cap_spinjump) && ((obj_mario.stompstyle == 1) && (sprite_index == spr_cap_spinjump))))
    {
        with (other.id)
            event_user(1)
    }
}


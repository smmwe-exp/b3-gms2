if ((sprite_index == spr_shell_spiny_empty) || (sprite_index == spr_SMB3_shell_spiny_empty))
{
    if (obj_mario.stompstyle == 1)
    {
        with (other.id)
            event_user(1)
        audio_play_sound(snd_stomp, 0, false)
        instance_create(other.x, (other.y + 22), obj_spinthump)
    }
    else
    {
        with (obj_mario)
            event_user(0)
    }
}
else if (mytopid == 0)
{
    with (instance_create(x, y, obj_shell))
    {
        sprite_index = other.sprite_index
        if (other.koopainside < 0)
        {
            koopainside = other.koopainside
            alarm[3] = 540
            alarm[4] = 600
        }
        if ((other.koopainside == 1) || (other.koopainside == 2))
            koopainside = 0
    }
    if (koopainside == 1)
    {
        with (instance_create((x - 8), y, obj_beachkoopa))
        {
            sprite_index = spr_beachkoopa
            if ((obj_mario.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
                hspeed = 3
            else if ((obj_mario.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
                hspeed = -3
            alarm[11] = 30
            ready = 0
        }
    }
    else if (koopainside == 2)
    {
        with (instance_create((x - 8), y, obj_beachkoopa_red))
        {
            sprite_index = spr_beachkoopa_red
            if ((obj_mario.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
                hspeed = 3
            else if ((obj_mario.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
                hspeed = -3
            alarm[11] = 30
            ready = 0
        }
    }
    instance_destroy()
}


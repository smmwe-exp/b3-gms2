if (!instance_exists(obj_invincibility))
{
    if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && (global.yoshi > 0))
    {
        audio_play_sound(snd_tread_boss, 0, false)
        audio_play_sound(snd_stomp, 0, false)
        instance_create(other.x, (other.y + 22), obj_spinthump)
        if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
            other.hspeed = -3.2
        else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            other.hspeed = 3.2
        else
            other.hspeed = -3.2
        firehitpoints--
        with (other.id)
            event_user(1)
    }
    else
    {
        with (other.id)
            event_user(0)
        with (other.id)
            event_user(1)
        if (global.apariencia == 2)
        {
            if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
                other.hspeed = -3.2
            else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
                other.hspeed = 3.2
            else
                other.hspeed = -3.2
        }
    }
}


if instance_exists(obj_invincibility)
    exit
if (vspeed > -1)
{
    if ((other.vspeed > 0) && ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && ((other.stompstyle == 1) || (global.yoshi == 1))))
    {
        instance_create((round((bbox_left + bbox_right)) / 2), (round((bbox_top + bbox_bottom)) / 2), obj_spinsmoke)
        audio_play_sound(scr_snd_kick(), 0, false)
        if (global.yoshi == 1)
        {
            with (other.id)
                event_user(1)
        }
        else
            other.vspeed = 0
        instance_destroy()
    }
    else if (other.bbox_bottom > (yprevious + 5))
    {
        if scr_canhold()
        {
            other.holding = 2
            held = 1
            speed = 0
            gravity = 0
        }
        else if (held == 0)
        {
            audio_stop_play_sound(226, 0, 0)
            instance_create(x, (y + 8), obj_spinthump)
            s_index = stun1
            image_speed = 0.15
            image_index = 1
            vspeed = -2
            alarm[0] = 312
            alarm[1] = 432
            with (other.id)
                event_user(7)
            if (other.x < x)
            {
                hspeed = (2.4 + (abs(obj_mario.hspeed) / 4))
                direct = 1
            }
            else if (other.x > x)
            {
                hspeed = (-(2.4 + (abs(obj_mario.hspeed) / 4)))
                direct = -1
            }
        }
    }
}


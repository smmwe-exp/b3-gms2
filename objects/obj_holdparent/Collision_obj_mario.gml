var alturabo;
if (held == 0)
{
    if (object_index == obj_bobomb_hold)
        alturabo = 12
    else
        alturabo = 5
    if ((other.bbox_bottom < ((bbox_top - vspeed) + alturabo)) && (other.vspeed > 0))
        event_user(1)
    else if (scr_canhold() && ((!inwall) && ((inmune == 0) && ((other.bbox_bottom > (bbox_top + 5)) && (other.bbox_top < (bbox_bottom - 4))))))
    {
        other.holding = 2
        if ((global.apariencia == 2) && (other.isduck == 1))
            isduckhold = 1
        if (global.apariencia == 3)
        {
            audio_play_sound(choose(441, 442), 0, false)
            with (other.id)
            {
                triple_jump = 0
                triple_count = 0
            }
        }
        held = 1
        depth = -7
        gravity = 0
        speed = 0
    }
    else if ((inmune == 0) && ((object_index == obj_bobomb_hold) || ((object_index == obj_galoomba_hold) || (object_index == obj_galoomba_hold2))))
    {
        if (!audio_is_playing(scr_snd_kick()))
            audio_play_sound(scr_snd_kick(), 0, false)
        if (!instance_exists(obj_spinthump))
        {
            with (instance_create(other.x, (other.y + 22), obj_spinthump))
            {
                image_xscale = 0.5
                image_yscale = 0.5
            }
        }
        if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || ((global.modo_noche == 1) && (global.bg_level == "airship"))))
        {
            if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
            {
                hspeed = (other.hspeed + 0.4)
                vspeed = -0.5
                direct = 1
            }
            else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            {
                hspeed = (other.hspeed - 0.4)
                vspeed = -0.5
                direct = -1
            }
            else
            {
                hspeed = (other.hspeed + 0.4)
                vspeed = -0.4
                direct = 1
            }
        }
        else if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
        {
            hspeed = (other.hspeed + 1.2)
            vspeed = -1.5
            direct = 1
        }
        else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
        {
            hspeed = (other.hspeed - 1.2)
            vspeed = -1.5
            direct = -1
        }
        else
        {
            hspeed = (other.hspeed + 1.2)
            vspeed = -1.5
            direct = 1
        }
        inmune = 1
        alarm[3] = 15
    }
}


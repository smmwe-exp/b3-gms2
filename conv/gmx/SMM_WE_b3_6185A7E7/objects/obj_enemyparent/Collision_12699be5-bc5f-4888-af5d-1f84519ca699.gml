if ((other.vspeed < 0) && ((bbox_bottom < (other.yprevious + 5)) && (vspeed >= 0)))
{
    audio_play_sound(scr_snd_kick(), 0, false)
    if ((object_index == obj_koopa) || ((object_index == obj_koopa_red) || ((object_index == obj_buzzybeetle) || ((object_index == obj_spiny) || (object_index == obj_shell_held)))))
        event_user(5)
    else if ((object_index == obj_galoomba) && (global.apariencia == 2))
    {
        with (instance_create((x - 8), y, obj_galoomba_hold))
        {
            direct = other.direct
            vspeed = -2.2
        }
        instance_destroy()
    }
    else if ((object_index == obj_galoomba2) && (global.apariencia == 2))
    {
        with (instance_create((x - 8), y, obj_galoomba_hold2))
        {
            direct = other.direct
            vspeed = -2.2
        }
        instance_destroy()
    }
    else if ((object_index == obj_bobomb) || (object_index == obj_bobomb_ready))
    {
        with (instance_create((x - 8), y, obj_bobomb_hold))
        {
            direct = other.direct
            vspeed = -2.2
        }
        instance_destroy()
    }
    else
        event_user(0)
    with (instance_create(x, y, obj_score))
        event_user(0)
}


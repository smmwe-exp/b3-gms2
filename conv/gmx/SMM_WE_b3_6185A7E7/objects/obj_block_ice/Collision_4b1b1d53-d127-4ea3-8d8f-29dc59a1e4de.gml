if ((other.ready == 1) && (obj_levelmanager.editor == 0))
{
    if (other.object_index == obj_thwomp_big)
    {
        alarm[0] = 1
        if (other.direct_t == 1)
        {
            with (other.id)
                vspeed = -1
        }
    }
    else
    {
        audio_play_sound(scr_snd_thwomp(), 0, false)
        with (other.id)
        {
            with (instance_create((x - 11), y, obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -7
            }
            with (instance_create((x + 11), y, obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -7
            }
            ready = 2
            vspeed = 0
            gravity = 0
            alarm[0] = 60
        }
    }
}


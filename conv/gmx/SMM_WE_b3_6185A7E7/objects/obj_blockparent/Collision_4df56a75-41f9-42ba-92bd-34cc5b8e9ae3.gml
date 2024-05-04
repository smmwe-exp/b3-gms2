if (((other.ready == 1) && ((obj_levelmanager.editor == 0) && ((y > other.y) && (other.direct_t == 1)))) || ((other.ready == 1) && ((obj_levelmanager.editor == 0) && (other.direct_t != 1))))
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
    if (object_index == obj_flipblock)
        alarm[2] = 1
    else if ((object_index == obj_noteblock) || (object_index == obj_musicblock))
    {
        if (other.direct_t == 1)
        {
            if (object_index == obj_noteblock)
            {
                audio_stop_sound(scr_snd_spring())
                audio_play_sound(scr_snd_spring(), 0, false)
            }
            else if (object_index == obj_musicblock)
            {
                audio_stop_sound(snd_musicblock)
                audio_stop_sound(snd_musicblock2)
            }
            ready = 1
            vspeed = 2
            alarm[3] = 7
            y--
            event_user(1)
        }
    }
    else if (ready == 0)
    {
        ready = 1
        vspeed = -2
        alarm[0] = 4
        event_user(0)
    }
}


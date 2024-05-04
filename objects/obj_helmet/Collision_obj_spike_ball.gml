if ((other.bbox_bottom < ((bbox_top - vvelocidad) + 8)) && (other.vspeed >= 0))
{
    if (object_index == obj_helmet_spiny)
        audio_play_sound(snd_helmet_spiny, 0, false)
    else
    {
        audio_play_sound(snd_helmet, 0, false)
        with (instance_create(x, y, obj_smoke))
            sprite_index = spr_starhelmet
    }
    other.fisica = 1
    other.ready = 1
    if (vvelocidad >= 0)
        other.vspeed = -2
    else
        other.vspeed = (vvelocidad + -1)
}


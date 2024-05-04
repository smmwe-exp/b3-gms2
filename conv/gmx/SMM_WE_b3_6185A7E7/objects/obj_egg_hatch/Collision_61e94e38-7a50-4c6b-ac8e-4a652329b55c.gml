if ((other.state == 2) && ((other.holding == 0) && ((other.vspeed > 0) && ((other.visible == 1) && (other.bbox_bottom < ((bbox_top - vspeed) + 5))))))
{
    with (obj_mario)
    {
        x = (other.x - 1)
        y = other.y
        direct = other.direct
        holding = 3
    }
    if (color == 0)
        instance_create((x - 1), (y + 16), obj_yoshi2)
    else
        instance_create((x - 1), (y + 16), obj_yoshi_red)
    audio_stop_sound(snd_yoshi)
    audio_play_sound(snd_yoshi, 0, false)
    instance_destroy()
}


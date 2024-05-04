if (inenemy == 1)
{
    audio_stop_sound(snd_stomp)
    audio_play_sound(snd_stomp, 0, false)
    enablecontrol = 0
    if (sprite_index != s_clown_damage)
        alarm[2] = 30
    other.hspeed = lengthdir_x(2, point_direction(x, y, other.x, other.y))
}
else if (((inmario == 0) && (!instance_exists(obj_kuribo_drybones))) || ((inmario == 0) && (instance_exists(obj_kuribo_drybones) && (obj_kuribo_drybones.gran_golpe == 0))))
{
    if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && ((other.vspeed > 0) && (other.state == 2)))
    {
        other.inclown = 1
        inmario = 1
        audio_play_sound(snd_clown_in, 0, false)
        alarm[0] = 30
        with (other.id)
        {
            gravity = 0
            stompstyle = 0
            isduck = 0
            isduckhold = 0
            isup = 0
            isuphold = 0
        }
    }
}


if ((other.bbox_bottom < ((bbox_top - vvelocidad) + 5)) && ((other.vspeed >= 0) && (!keyboard_check(global.lanzar_agarrar))))
{
    audio_play_sound(snd_helmet, 0, false)
    with (instance_create(x, y, obj_smoke))
        sprite_index = spr_starhelmet
    other.hspeed = lengthdir_x(1, point_direction(x, y, other.x, other.y))
    if (vvelocidad >= 0)
        other.vspeed = -2
    else
        other.vspeed = (vvelocidad + -1)
}

if (sprite_index != spr_charginchuck_damage)
{
    if (hp > 1)
    {
        audio_play_sound(snd_stomp, 0, false)
        audio_play_sound(snd_tread_boss, 0, false)
        sprite_index = spr_charginchuck_damage
        image_speed = 0.15
        image_index = 0
        hspeed = 0
        hp--
        alarm[10] = -1
    }
    else
    {
        with (instance_create((((bbox_left + bbox_right) / 2) - 8), y, obj_score))
            event_user(6)
        event_user(0)
    }
}
else
{
    audio_play_sound(snd_stomp, 0, false)
    audio_play_sound(snd_tread_boss, 0, false)
}


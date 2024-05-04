if ((obj_mario.stompstyle == 1) && (global.apariencia == 2))
{
    with (other.id)
        event_user(1)
    audio_play_sound(snd_stomp, 0, false)
    instance_create(other.x, (other.y + 22), obj_spinthump)
}
else
{
    with (other.id)
        event_user(0)
}


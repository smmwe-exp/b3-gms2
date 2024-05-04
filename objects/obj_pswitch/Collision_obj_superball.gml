if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && ((obj_levelmanager.editor == 0) && (held == 0)))
{
    audio_play_sound(snd_warning, 0, false)
    instance_create(x, y, obj_pswitch_press)
    alarm[1] = 60
    with (obj_levelmanager)
    {
        pwarning = 0
        alarm[10] = 600
        event_user(1)
    }
    with (other.id)
        event_user(0)
    instance_destroy()
}


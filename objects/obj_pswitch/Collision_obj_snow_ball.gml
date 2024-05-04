if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && ((inup == 0) && ((other.vspeed >= 0) && ((obj_levelmanager.editor == 0) && (held == 0)))))
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
    instance_destroy()
}
else if ((inup == 1) && (other.vspeed < 0))
{
    event_user(6)
    with (other.id)
        vspeed = 0
}


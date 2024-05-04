if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && ((inup == 0) && ((other.vspeed >= 0) && ((other.object_index != obj_grinder) && ((other.object_index != obj_boo) && ((other.object_index != obj_podoboo) && ((other.object_index != obj_magikoopa) && ((other.object_index != obj_banzaibill) && ((other.object_index != obj_bulletbill) && ((other.object_index != obj_cannonball) && ((other.object_index != obj_cannonball_red) && ((obj_levelmanager.editor == 0) && (held == 0)))))))))))))
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


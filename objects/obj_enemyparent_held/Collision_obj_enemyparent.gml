if (((hspeed != 0) && ((held == 0) && (vspeed <= 0))) && ((other.hardness < 99) && ((obj_levelmanager.editor == 0) && ((other.sprite_index != spr_beachkoopa) && (other.sprite_index != spr_beachkoopa_red)))))
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (other.id)
        event_user(0)
}
else if ((vspeed < 0) && ((held == 0) && ((other.hardness < 99) && ((obj_levelmanager.editor == 0) && ((other.sprite_index != spr_beachkoopa) && (other.sprite_index != spr_beachkoopa_red))))))
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (other.id)
        event_user(0)
}
else if ((held == 1) && ((other.hardness < 99) && (obj_levelmanager.editor == 0)))
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (other.id)
        event_user(0)
    event_user(0)
}


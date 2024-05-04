if ((hspeed != 0) && (instance_exists(id) && (other.hardness < 99)))
{
    if instance_exists(obj_mario)
    {
        if (global.apariencia < 2)
            scr_musicalscale_SMB3(obj_mario.id, other.id, 1)
        else if (global.apariencia == 2)
            scr_musicalscale(obj_mario.id, other.id, 1)
    }
    with (other.id)
        event_user(0)
}
if (other.object_index == obj_shell_held)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (instance_create((round((bbox_left + bbox_right)) / 2), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
        sprite_index = spr_spinthump
    with (other.id)
        event_user(0)
    event_user(0)
    with (instance_create((x - 8), y, obj_score))
        event_user(5)
}


if ((image_index == 0) && (visible == 1))
{
    audio_stop_sound(snd_add_wings)
    audio_play_sound(snd_add_wings, 0, false)
    if instance_exists(obj_guardabot)
    {
        obj_guardabot.pos = 57
        with (obj_gb_button)
            instance_destroy()
        if (obj_guardabot.list_post == 1)
        {
            with (obj_guardabot)
                event_user(1)
        }
        else if (obj_guardabot.list_post == 2)
        {
            with (obj_guardabot)
                event_user(2)
        }
        else if (obj_guardabot.list_post == 3)
        {
            with (obj_guardabot)
                event_user(3)
        }
        else if (obj_guardabot.list_post == 4)
        {
            with (obj_guardabot)
                event_user(4)
        }
    }
}


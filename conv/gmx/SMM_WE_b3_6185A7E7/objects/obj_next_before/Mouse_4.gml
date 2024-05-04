if (obj_levelmanager.editor == 1)
{
    if (image_index == 0)
    {
        if ((obj_panel_expand.value == 9) || ((obj_panel_expand.value == 4) || (obj_panel_expand.value == 3)))
        {
            audio_stop_sound(snd_palette_page2)
            audio_play_sound(snd_palette_page2, 0, false)
        }
        else if (obj_panel_expand.value != 1)
        {
            audio_stop_sound(snd_page_enemies2)
            audio_play_sound(snd_page_enemies2, 0, false)
        }
        if (obj_panel_expand.value == 2)
        {
            obj_panel_expand.value = 1
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(0)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 3)
        {
            obj_panel_expand.value = 2
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(1)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 4)
        {
            obj_panel_expand.value = 3
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(2)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 5)
        {
            obj_panel_expand.value = 4
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(3)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 6)
        {
            obj_panel_expand.value = 5
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(4)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 7)
        {
            obj_panel_expand.value = 6
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(5)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 8)
        {
            obj_panel_expand.value = 7
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(6)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 9)
        {
            obj_panel_expand.value = 8
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(7)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 10)
        {
            obj_panel_expand.value = 9
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(8)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 11)
        {
            obj_panel_expand.value = 10
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(9)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 12)
        {
            obj_panel_expand.value = 11
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(10)
                ready = 1
            }
        }
    }
    else if (image_index == 1)
    {
        if ((obj_panel_expand.value == 2) || ((obj_panel_expand.value == 3) || (obj_panel_expand.value == 8)))
        {
            audio_stop_sound(snd_palette_page2)
            audio_play_sound(snd_palette_page2, 0, false)
        }
        else if (obj_panel_expand.value != 12)
        {
            audio_stop_sound(snd_page_enemies)
            audio_play_sound(snd_page_enemies, 0, false)
        }
        if (obj_panel_expand.value == 1)
        {
            obj_panel_expand.value = 2
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(1)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 2)
        {
            obj_panel_expand.value = 3
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(2)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 3)
        {
            obj_panel_expand.value = 4
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(3)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 4)
        {
            obj_panel_expand.value = 5
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(4)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 5)
        {
            obj_panel_expand.value = 6
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(5)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 6)
        {
            obj_panel_expand.value = 7
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(6)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 7)
        {
            obj_panel_expand.value = 8
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(7)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 8)
        {
            obj_panel_expand.value = 9
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(8)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 9)
        {
            obj_panel_expand.value = 10
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(9)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 10)
        {
            obj_panel_expand.value = 11
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(10)
                ready = 1
            }
        }
        else if (obj_panel_expand.value == 11)
        {
            obj_panel_expand.value = 12
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
            {
                event_user(11)
                ready = 1
            }
        }
    }
}


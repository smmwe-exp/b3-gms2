if ((obj_levelmanager.editor == 1) && ((obj_levelmanager.editor_sonidos == 0) && ((global.resource_create == 0) && ((object_index != obj_resource_empty) && ((obj_editormanager.expand_open == 0) && (instance_exists(obj_cursor) && (obj_cursor.dont_move == 0)))))))
{
    if (global.editor_activity == 1)
    {
        if (global.cursor == 0)
        {
            if ((obj_parent_resource.alarm[0] == -1) && (alarm[0] == -1))
            {
                if ((mouse_x > (x + 7)) && ((mouse_y > (y + 7)) && ((mouse_x < (x + 25)) && (mouse_y < (y + 25)))))
                {
                    audio_play_sound(snd_change_arrow, 0, false)
                    if (direct_t == 1)
                    {
                        direct_t = 2
                        rotacion = 270
                    }
                    else if (direct_t == 2)
                    {
                        direct_t = 3
                        rotacion = 90
                    }
                    else if (direct_t == 3)
                    {
                        direct_t = 1
                        rotacion = 0
                    }
                    expand = 1
                }
                else
                {
                    audio_play_sound(snd_ground_bomb, 0, false)
                    expand = 1
                    calculo_x = (x - mouse_x)
                    calculo_y = (y - mouse_y)
                    x_start = x
                    y_start = y
                    global.resource_block = 1
                    drag = 1
                    obj_cursor.move = 1
                    can_cont = 1
                    global.cursor = 1
                    with (obj_cursor)
                        event_user(0)
                    if (!instance_exists(obj_effect_touch))
                        instance_create(mouse_x, mouse_y, obj_effect_touch)
                    alarm[0] = 1
                }
            }
        }
    }
}


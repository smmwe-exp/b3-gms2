if ((obj_levelmanager.editor == 1) && ((obj_levelmanager.editor_sonidos == 0) && ((global.resource_create == 0) && ((object_index != obj_resource_empty) && ((obj_editormanager.expand_open == 0) && (instance_exists(obj_cursor) && (obj_cursor.dont_move == 0)))))))
{
    if (global.editor_activity == 1)
    {
        if (global.cursor == 0)
        {
            if ((obj_parent_resource.alarm[0] == -1) && (alarm[0] == -1))
            {
                if ((mouse_x > (x + ((16 * size_x) - 16))) && ((mouse_x < (x + (16 * size_x))) && ((mouse_y > y) && (mouse_y < (y + 16)))))
                {
                    poder_girar = 1
                    draw_p = 1
                    obj_cursor.move_tuberia = 1
                }
                else if ((mouse_x > ((x + ((16 * size_x) / 2)) - 8)) && ((mouse_x < ((x + ((16 * size_x) / 2)) + 8)) && ((mouse_y > y) && (mouse_y < (y + 16)))))
                {
                    audio_play_sound(snd_change_arrow, 0, false)
                    if (direct_t == 3)
                        direct_t = 1
                    else
                        direct_t = 3
                }
                else
                {
                    audio_play_sound(snd_ground_bomb, 0, false)
                    calculo_x = (x - mouse_x)
                    calculo_y = (y - mouse_y)
                    if instance_exists(obj_creation_preview)
                    {
                        obj_creation_preview.calculo_x = (x - mouse_x)
                        obj_creation_preview.calculo_y = (y - mouse_y)
                    }
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


if ((obj_levelmanager.editor == 1) && ((global.resource_create == 0) && ((object_index != obj_resource_empty) && ((obj_editormanager.expand_open == 0) && ((!collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_layout, 1, 1)) && (!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_layout)))))))
{
    if ((global.editor_activity == 1) && ((obj_editormanager.expand_open == 0) && ((!place_meeting(x, y, obj_creator_jugar_editar)) && (!place_meeting(x, y, obj_panel_expand)))))
    {
        if (global.cursor == 0)
        {
            if ((obj_parent_resource.alarm[0] == -1) && (alarm[0] == -1))
            {
                if (((mouse_x > (x - 7)) && ((mouse_x < (x + 7)) && ((mouse_y > (y - 32)) && ((mouse_y < (y - 2)) && (direct_t == 0))))) || (((mouse_x > (x + 2)) && ((mouse_x < (x + 16)) && ((mouse_y > (y - 7)) && ((mouse_y < (y + 7)) && (direct_t == 1))))) || (((mouse_x > (x - 7)) && ((mouse_x < (x + 7)) && ((mouse_y > (y + 2)) && ((mouse_y < (y + 16)) && (direct_t == 2))))) || ((mouse_x > (x - 16)) && ((mouse_x < (x - 2)) && ((mouse_y > (y - 7)) && ((mouse_y < (y + 7)) && (direct_t == 3))))))))
                {
                    poder_girar = 1
                    draw_p = 1
                    obj_cursor.move_tuberia = 1
                    expand = 1
                }
                else
                {
                    audio_play_sound(snd_ground_bomb, 0, false)
                    expand = 1
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


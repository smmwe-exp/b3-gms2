if ((obj_levelmanager.editor == 1) && ((global.resource_create == 0) && ((object_index != obj_resource_empty) && (((obj_editormanager.expand_open == 0) || (obj_levelmanager.editor_sonidos == 1)) && ((follow == 0) && ((!collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_layout, 1, 1)) && (!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_layout))))))))
{
    if ((global.editor_activity == 1) && ((!place_meeting(x, y, obj_creator_jugar_editar)) && ((!place_meeting(x, y, obj_mario_editor)) && (!place_meeting(x, y, obj_panel_expand)))))
    {
        if (global.cursor == 0)
        {
            if instance_exists(obj_parent_resource)
            {
                if (obj_parent_resource.alarm[0] == -1)
                {
                    audio_play_sound(snd_drag, 0, false)
                    expand = 1
                    x_start = x
                    y_start = y
                    global.resource_block = 1
                    drag = 1
                    drag_draw = 0
                    obj_cursor.move = 1
                    global.cursor = 1
                    with (obj_cursor)
                        event_user(0)
                    alarm[0] = 1
                }
            }
            else
            {
                audio_play_sound(snd_drag, 0, false)
                x_start = x
                y_start = y
                global.resource_block = 1
                drag = 1
                drag_draw = 0
                global.cursor = 1
                with (obj_cursor)
                    event_user(0)
                alarm[0] = 1
            }
        }
    }
}


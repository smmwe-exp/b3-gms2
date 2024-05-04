if ((room == rm_editor) && ((obj_levelmanager.editor == 1) && (instance_exists(obj_editormanager) && ((obj_editormanager.zoom == 0) && ((obj_editormanager.expand_open == 0) || (obj_levelmanager.editor_sonidos == 1))))))
{
    if ((!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_layout)) && ((!collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_ground2, 1, 1)) && ((!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground2)) && ((!collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_ground3, 1, 1)) && (!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground3))))))
    {
        if ((global.cursor == 0) && ((global.editor_activity == 1) && ((global.select_resource != 617) && ((((!collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_resource, 1, 1)) && (!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_resource))) || (place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_sounds) && (obj_levelmanager.editor_sonidos == 0))) && ((!place_meeting(x, y, obj_arrow_lock)) && ((obj_creation_preview.place == 0) && (((obj_cursor.dont_move == 0) || (obj_cursor.dont_move == 2)) && ((global.select_resource != 433) && ((global.select_resource != 489) && ((global.select_resource != 437) && ((global.select_resource != 438) && ((global.select_resource != 500) && ((global.select_resource != 501) && ((global.select_resource != 502) && ((global.select_resource != 503) && ((global.select_resource != 487) && ((global.select_resource != 488) && (global.select_resource != 506))))))))))))))))))
        {
            global.resource_create = 1
            event_user(1)
        }
        else if (obj_levelmanager.editor_sonidos == 1)
        {
            if ((obj_persistent.modo_android == 1) && ((move_view == 0) && ((global.select_resource == 617) && (((!collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_resource, 1, 1)) || collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_ground, 1, 1)) && (((!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_resource)) || place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground)) && ((!collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_mario_editor, 1, 1)) && ((!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_mario_editor)) && ((!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_expand_panels)) && ((!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_expand_panels_left)) && ((!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_expand_paneles_top)) && ((move_tuberia == 0) && (global.cursor == 0))))))))))))
                move_view = 1
        }
    }
}
if (instance_exists(obj_ventana) && (instance_exists(obj_window_button) && (!place_meeting(x, y, obj_ventana))))
{
    with (obj_ventana)
        can_anim2 = 1
}


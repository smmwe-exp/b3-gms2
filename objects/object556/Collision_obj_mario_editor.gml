if (instance_exists(obj_levelmanager) && ((!place_meeting(x, y, obj_panel_expand)) && ((obj_move_ground.move == 0) && ((obj_move_ground3.move == 0) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_inhibidor_vk, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_robot, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_card_rocket, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_menu_editor, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_logo_game, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_expand_panels, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_expand_panels_left, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_expand_paneles_top, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_card_bg, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_panel_time, 0, 0)))))))))))))))
{
    if ((obj_levelmanager.editor == 1) && (obj_editormanager.expand_open == 0))
    {
        if ((move == 0) && (mouse_check_button(1) && ((item_add == 0) && (obj_erase.active == 0))))
        {
            move = 1
            object_move = other.id
            obj_depth = other.depth
            other.image_speed = 0.15
            audio_play_sound(snd_drag, 0, false)
        }
    }
}


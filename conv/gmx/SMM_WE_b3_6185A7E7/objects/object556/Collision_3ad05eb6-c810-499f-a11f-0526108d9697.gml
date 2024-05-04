if instance_exists(obj_levelmanager)
{
    if ((obj_levelmanager.editor == 1) && ((obj_move_ground.move == 0) && ((obj_move_ground3.move == 0) && ((obj_editormanager.expand_open == 0) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_inhibidor_vk, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_robot, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_card_rocket, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_menu_editor, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_logo_game, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_expand_panels, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_expand_panels_left, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_expand_paneles_top, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_card_bg, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_panel_time, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_card_item, 0, 0)) && ((!place_meeting(x, y, obj_creator_jugar_editar)) && (!place_meeting(x, y, obj_panel_expand))))))))))))))))))
    {
        if (mouse_check_button(1) && ((obj_erase.active == 1) && (obj_erase.can_clean == 1)))
        {
            audio_stop_sound(snd_erase_clean)
            audio_play_sound(snd_erase_clean, 0, false)
            with (other.id)
            {
                with (obj_generador)
                    instance_destroy()
                instance_destroy()
            }
        }
        else if ((move == 0) && (mouse_check_button(1) && ((item_add == 0) && (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_erase, 0, 0)))))
        {
            move = 1
            object_move = other.id
            obj_depth = other.depth
            audio_play_sound(snd_drag, 0, false)
            obj_erase.active = 0
            image_index = 0
        }
    }
}


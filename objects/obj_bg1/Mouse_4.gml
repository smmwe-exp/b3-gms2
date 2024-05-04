if ((obj_levelmanager.editor == 1) && ((image_index != 10) && ((image_index != 11) && (image_index != 12))))
{
    if instance_exists(obj_player_trail)
    {
        with (obj_player_trail)
            instance_destroy()
    }
    audio_play_sound(snd_seleccion_entorno1, 0, false)
    global.bg_level = bg_s
    event_user(0)
    audio_stop_sound(obj_creator_jugar_editar.music_editor)
    audio_play_sound(s_music_editor, 99, true)
    obj_creator_jugar_editar.music_editor = s_music_editor
    if (bg_s == "castle")
    {
        if instance_exists(obj_lava_water)
        {
            with (obj_lava_water)
                instance_destroy()
        }
        if (global.apariencia == 0)
        {
            with (instance_create(__view_get( e__VW.XView, 0 ), (room_height - 4), obj_lava_water))
                sprite_index = spr_SMB_lava
        }
        else if (global.apariencia == 1)
        {
            with (instance_create(__view_get( e__VW.XView, 0 ), (room_height - 4), obj_lava_water))
                sprite_index = spr_SMB3_lava
        }
        else
            instance_create(__view_get( e__VW.XView, 0 ), (room_height - 4), obj_lava_water)
    }
    else if ((bg_s == "forest") && (global.modo_noche == 1))
    {
        if instance_exists(obj_lava_water)
        {
            with (obj_lava_water)
                instance_destroy()
        }
        if (global.apariencia == 0)
        {
            with (instance_create(__view_get( e__VW.XView, 0 ), (room_height - 4), obj_lava_water))
                sprite_index = spr_SMB_lava_purple
        }
        else if (global.apariencia == 1)
        {
            with (instance_create(__view_get( e__VW.XView, 0 ), (room_height - 4), obj_lava_water))
                sprite_index = spr_SMB3_lava_purple
        }
        else
        {
            with (instance_create(__view_get( e__VW.XView, 0 ), (room_height - 4), obj_lava_water))
                sprite_index = spr_lava_purple
        }
    }
    else if ((bg_s == "forest") && (global.modo_noche == 0))
    {
        if instance_exists(obj_lava_water)
        {
            with (obj_lava_water)
                instance_destroy()
        }
        if (global.apariencia == 0)
        {
            with (instance_create(__view_get( e__VW.XView, 0 ), (room_height - 4), obj_lava_water))
                sprite_index = spr_SMB_water
        }
        else if (global.apariencia == 1)
        {
            with (instance_create(__view_get( e__VW.XView, 0 ), (room_height - 4), obj_lava_water))
                sprite_index = spr_SMB3_water
        }
        else
        {
            with (instance_create(__view_get( e__VW.XView, 0 ), (room_height - 4), obj_lava_water))
                sprite_index = spr_water
        }
    }
    else if instance_exists(obj_lava_water)
    {
        with (obj_lava_water)
            instance_destroy()
    }
    event_user(1)
    with (obj_editormanager)
        alarm[0] = 15
    with (obj_bg_selection)
        event_user(0)
}


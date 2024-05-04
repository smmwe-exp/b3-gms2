if (((obj_levelmanager.editor == 1) && (instance_exists(obj_card_logo) && (image_index != 6))) || ((obj_levelmanager.editor == 1) && (instance_exists(obj_card_logo) && ((image_index == 3) && ((global.debug2 == "29") || ((global.debug2 == "37") || ((global.debug2 == "35") || ((global.debug2 == "15") || ((global.debug2 == "22") || ((global.debug2 == "12") || ((global.debug2 == "11") || ((global.debug2 == "17") || ((global.debug2 == "10") || ((global.debug2 == "31") || ((global.debug2 == "23") || ((global.debug2 == "4") || ((global.debug2 == "33") || ((global.debug2 == "14") || ((global.debug2 == "21") || ((global.debug2 == "2") || (global.debug2 == "32")))))))))))))))))))))
{
    audio_play_sound(snd_seleccion_entorno1, 0, false)
    if (global.bg_level == "ground")
    {
        event_user(0)
        __background_set( e__BG.Index, 0, scr_bg_ground( ))
        obj_levelmanager.levelmusic = scr_snd_ground()
        s_music_editor = scr_snd_editor_ground()
    }
    else if (global.bg_level == "underground")
    {
        event_user(0)
        __background_set( e__BG.Index, 0, scr_bg_underground( ))
        obj_levelmanager.levelmusic = scr_snd_underground()
        s_music_editor = scr_snd_editor_underground()
    }
    else if (global.bg_level == "castle")
    {
        event_user(0)
        __background_set( e__BG.Index, 0, scr_bg_castle( ))
        obj_levelmanager.levelmusic = scr_snd_castle()
        s_music_editor = scr_snd_editor_castle()
    }
    else if (global.bg_level == "underwater")
    {
        event_user(0)
        __background_set( e__BG.Index, 0, scr_bg_underwater( ))
        obj_levelmanager.levelmusic = scr_snd_underwater()
        s_music_editor = scr_snd_editor_underwater()
    }
    else if (global.bg_level == "ghost")
    {
        event_user(0)
        __background_set( e__BG.Index, 0, scr_bg_ghost_house( ))
        obj_levelmanager.levelmusic = scr_snd_ghost_house()
        s_music_editor = scr_snd_editor_ghost()
    }
    else if (global.bg_level == "airship")
    {
        event_user(0)
        __background_set( e__BG.Index, 0, scr_bg_airship( ))
        obj_levelmanager.levelmusic = scr_snd_airship()
        s_music_editor = scr_snd_editor_airship()
    }
    else if (global.bg_level == "forest")
    {
        event_user(0)
        __background_set( e__BG.Index, 0, scr_bg_forest( ))
        obj_levelmanager.levelmusic = scr_snd_forest()
        s_music_editor = scr_snd_editor_forest()
    }
    else if (global.bg_level == "sky")
    {
        event_user(0)
        __background_set( e__BG.Index, 0, scr_bg_sky( ))
        obj_levelmanager.levelmusic = scr_snd_sky()
        s_music_editor = scr_snd_editor_sky()
    }
    else if (global.bg_level == "desert")
    {
        event_user(0)
        __background_set( e__BG.Index, 0, scr_bg_desert( ))
        obj_levelmanager.levelmusic = scr_snd_desert()
        s_music_editor = scr_snd_editor_desert()
    }
    else if (global.bg_level == "snow")
    {
        event_user(0)
        __background_set( e__BG.Index, 0, scr_bg_snow( ))
        obj_levelmanager.levelmusic = scr_snd_snow()
        s_music_editor = scr_snd_editor_snow()
    }
    if ((global.apariencia != 0) && instance_exists(obj_card_item))
    {
        global.flower = 0
        with (obj_card_item)
        {
            if (obj == 482)
            {
                obj = 479
                obj_draw = 61
            }
        }
    }
    scr_create_bg_anim()
    audio_stop_sound(obj_creator_jugar_editar.music_editor)
    audio_play_sound(s_music_editor, 99, true)
    obj_creator_jugar_editar.music_editor = s_music_editor
    instance_activate_object(obj_player_trail)
    if instance_exists(obj_player_trail)
    {
        with (obj_player_trail)
            instance_destroy()
    }
    with (obj_apariencia)
        event_user(0)
    with (obj_editormanager)
        alarm[0] = 15
}


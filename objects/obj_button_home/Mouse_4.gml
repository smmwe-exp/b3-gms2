if (disabled == 0)
{
    if (((sprite_index == spr_crear_un_nivel) || (sprite_index == spr_create_a_level)) && ((press == 1) && (!instance_exists(obj_settings_panel))))
    {
        press = 0
        audio_play_sound(snd_modo_historia, 0, false)
        image_speed = 0.4
        if instance_exists(obj_cursor)
            obj_cursor.active_menu = 1
        lives = 0
        if instance_exists(obj_creator_jugar_editar)
            audio_stop_sound(obj_creator_jugar_editar.music_editor)
        audio_stop_sound(snd_titlemusic)
        audio_stop_sound(snd_titlemusic_night)
        audio_stop_sound(snd_desafio_super_mario)
        audio_stop_sound(snd_super_experto)
        audio_stop_sound(snd_guardabot)
    }
    else if ((sprite_index == spr_buttons_DSM_menu) && ((press == 1) && (!instance_exists(obj_settings_panel))))
    {
        audio_play_sound(snd_modo_historia, 0, false)
        press = 0
        image_speed = 0.4
        if instance_exists(obj_cursor)
            obj_cursor.active_menu = 1
        lives = 10
        if instance_exists(obj_creator_jugar_editar)
            audio_stop_sound(obj_creator_jugar_editar.music_editor)
        audio_stop_sound(snd_titlemusic)
        audio_stop_sound(snd_titlemusic_night)
        audio_stop_sound(snd_desafio_super_mario)
        audio_stop_sound(snd_super_experto)
        audio_stop_sound(snd_guardabot)
    }
    else if (((sprite_index == spr_buttons_guardabot_menu) || (sprite_index == spr_button_coursebot_menu)) && ((press == 1) && (!instance_exists(obj_settings_panel))))
    {
        press = 0
        audio_play_sound(snd_modo_historia, 0, false)
        image_speed = 0.4
        if instance_exists(obj_cursor)
            obj_cursor.active_menu = 1
        lives = 0
        if instance_exists(obj_creator_jugar_editar)
            audio_stop_sound(obj_creator_jugar_editar.music_editor)
        audio_stop_sound(snd_titlemusic)
        audio_stop_sound(snd_titlemusic_night)
        audio_stop_sound(snd_desafio_super_mario)
        audio_stop_sound(snd_super_experto)
        audio_stop_sound(snd_guardabot)
    }
}


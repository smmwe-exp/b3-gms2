if instance_exists(obj_creator_jugar_editar)
    audio_pause_sound(obj_creator_jugar_editar.music_editor)
instance_create((__view_get( e__VW.XView, 0 ) + 360), (__view_get( e__VW.YView, 0 ) + 11), obj_button_close_menu)
if (!instance_exists(obj_button_home))
{
    with (instance_create((__view_get( e__VW.XView, 0 ) + 212), (__view_get( e__VW.YView, 0 ) + 34), obj_button_home))
    {
        if (global.idioma == 0)
            sprite_index = spr_crear_un_nivel
        else if (global.idioma == 1)
            sprite_index = spr_create_a_level
        depth = -16
        press = 1
        if (room == rm_editor)
        {
            disabled = 1
            image_index = 1
        }
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 212), (__view_get( e__VW.YView, 0 ) + 69), obj_button_home))
    {
        sprite_index = spr_buttons_DSM_menu
        depth = -16
        press = 1
        if (room == rm_desafio_super_mario)
        {
            disabled = 1
            image_index = 1
        }
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 212), (__view_get( e__VW.YView, 0 ) + 104), obj_button_home))
    {
        if (global.idioma == 1)
            sprite_index = spr_buttons_plays_english
        image_index = 1
        depth = -16
        press = 1
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 212), (__view_get( e__VW.YView, 0 ) + 139), obj_button_home))
    {
        if (global.idioma == 0)
            sprite_index = spr_buttons_guardabot_menu
        else if (global.idioma == 1)
            sprite_index = spr_button_coursebot_menu
        depth = -16
        press = 1
        if (room == rm_guardabot)
        {
            disabled = 1
            image_index = 1
        }
    }
}
instance_create((__view_get( e__VW.XView, 0 ) + 212), (__view_get( e__VW.YView, 0 ) + 176), obj_button_paloma)
instance_create((__view_get( e__VW.XView, 0 ) + 249), (__view_get( e__VW.YView, 0 ) + 187), obj_settings_button)
with (instance_create((__view_get( e__VW.XView, 0 ) + 273), (__view_get( e__VW.YView, 0 ) + 187), obj_settings_button))
    image_index = 2
with (instance_create((__view_get( e__VW.XView, 0 ) + 297), (__view_get( e__VW.YView, 0 ) + 187), obj_settings_button))
    image_index = 1
with (instance_create((__view_get( e__VW.XView, 0 ) + 355), (__view_get( e__VW.YView, 0 ) + 187), obj_settings_button))
    image_index = 3


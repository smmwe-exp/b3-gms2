image_speed = 0
image_index = global.idioma
music = obj_levelmanager.levelmusic
back = background_create_from_surface(application_surface, 0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0, 0)
instance_deactivate_all(true)
instance_activate_object(obj_persistent)
if audio_is_playing(music)
    audio_pause_sound(music)
if audio_is_playing(scr_snd_starman())
    audio_pause_sound(scr_snd_starman())
if audio_is_playing(scr_snd_switchsong())
    audio_pause_sound(scr_snd_switchsong())
if audio_is_playing(scr_snd_dead())
    audio_pause_sound(scr_snd_dead())
if audio_is_playing(scr_snd_hurryup())
    audio_pause_sound(scr_snd_hurryup())
if audio_is_playing(bgm_sm1clear)
    audio_pause_sound(bgm_sm1clear)
if audio_is_playing(snd_SMB_clear_superball)
    audio_pause_sound(snd_SMB_clear_superball)
if audio_is_playing(snd_SMB3_course_clear)
    audio_pause_sound(snd_SMB3_course_clear)
if audio_is_playing(bgm_smwclear)
    audio_pause_sound(bgm_smwclear)
if audio_is_playing(snd_SMB_course_clear_castle)
    audio_pause_sound(snd_SMB_course_clear_castle)
if audio_is_playing(snd_SMB3_course_clear_castle)
    audio_pause_sound(snd_SMB3_course_clear_castle)
if audio_is_playing(bgm_smwclear_castle)
    audio_pause_sound(bgm_smwclear_castle)
if audio_is_playing(snd_skid)
    audio_pause_sound(snd_skid)
if audio_is_playing(snd_pmeter)
    audio_pause_sound(snd_pmeter)
audio_play_sound(snd_pausa, 0, false)
with (instance_create((__view_get( e__VW.XView, 0 ) + 252), (__view_get( e__VW.YView, 0 ) + 99), obj_pausa_button))
    sprite_index = spr_pausa_continuar
with (instance_create((__view_get( e__VW.XView, 0 ) + 252), (__view_get( e__VW.YView, 0 ) + 126), obj_pausa_button))
    sprite_index = spr_pausa_volver
with (instance_create((__view_get( e__VW.XView, 0 ) + 252), (__view_get( e__VW.YView, 0 ) + 153), obj_pausa_button))
    sprite_index = spr_pausa_salir
instance_create((__view_get( e__VW.XView, 0 ) + 252), (__view_get( e__VW.YView, 0 ) + 183), obj_button_sonidos_pausa)
with (instance_create((__view_get( e__VW.XView, 0 ) + 352), (__view_get( e__VW.YView, 0 ) + 183), obj_settings_button))
{
    image_index = 2
    x = (__view_get( e__VW.XView, 0 ) + 352)
    y = (__view_get( e__VW.YView, 0 ) + 183)
    depth = -17
}
if instance_exists(obj_persistent)
{
    if (obj_persistent.modo_android == 0)
        instance_create((x + 100), (y + 100), obj_cursor)
    else
    {
        with (instance_create((x + 100), (y + 100), obj_cursor))
            visible = 0
    }
}


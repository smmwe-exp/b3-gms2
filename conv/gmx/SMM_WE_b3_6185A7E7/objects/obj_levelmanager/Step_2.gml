var x_pos;
if ((global.condiciones == 1) && (editor == 0))
{
    if (global.condiciones_type == 0)
    {
        if (global.condiciones_count == 0)
        {
            if (instance_exists(obj_deadmario) || (instance_exists(obj_mario_transform2) && (obj_mario_transform2.powerdown == 1)))
            {
                if (global.condiciones_clear == 1)
                {
                    global.condiciones_clear = 0
                    if instance_exists(obj_alert_condicion)
                    {
                        with (obj_alert_condicion)
                            instance_destroy()
                    }
                    with (instance_create((__view_get( e__VW.XView, 0 ) + 54), (__view_get( e__VW.YView, 0 ) + 98), obj_alert_condicion))
                    {
                        sprite_index = spr_conidiones_alert_acciones2
                        image_index = 1
                    }
                }
            }
        }
        else if (global.condiciones_count == 1)
        {
            if (instance_exists(obj_mario) && ((obj_mario.state > 1) && (jump_condicion == 0)))
                jump_condicion = 1
            else if (instance_exists(obj_mario) && ((obj_mario.inclown == 0) && ((obj_mario.state < 2) && ((global.condiciones_clear == 1) && (jump_condicion == 1)))))
            {
                global.condiciones_clear = 0
                if instance_exists(obj_alert_condicion)
                {
                    with (obj_alert_condicion)
                        instance_destroy()
                }
                with (instance_create((__view_get( e__VW.XView, 0 ) + 54), (__view_get( e__VW.YView, 0 ) + 98), obj_alert_condicion))
                {
                    sprite_index = spr_conidiones_alert_acciones
                    image_index = 1
                }
            }
        }
    }
}
if (editor == 1)
    jump_condicion = 0
if ((global.modo_noche == 1) && ((editor == 0) && ((global.bg_level == "ghost") || (global.bg_level == "underwater"))))
{
    if (!instance_exists(obj_lighting))
        instance_create(0, 0, obj_lighting)
}
else if instance_exists(obj_lighting)
{
    with (obj_lighting)
        instance_destroy()
}
if (global.key_br == 1)
    keyboard_key_press(global.lanzar_agarrar)
if (keyboard_check_pressed(ord("T")) && (obj_persistent.modo_android == 1))
{
    if (global.key_br == 0)
        global.key_br = 1
    else
    {
        global.key_br = 0
        keyboard_key_release(global.lanzar_agarrar)
    }
}
if ((pmeter < 6) || (editor == 1))
    audio_stop_sound(snd_pmeter)
event_user(6)
if instance_exists(obj_autoscroll)
{
    if instance_exists(obj_mario)
    {
        x = obj_autoscroll.x
        if ((global.checkpointroom != -4) && (f_mario == 0))
        {
            y = obj_autoscroll.y
            f_mario = 1
        }
        else if (f_mario == 0)
        {
            y = obj_mario.y
            f_mario = 1
        }
        else
            event_user(8)
    }
    else if instance_exists(follow)
    {
        event_user(2)
        x = follow.x
        y = follow.y
        __view_set( e__VW.HSpeed, 0, 4 )
        __view_set( e__VW.VSpeed, 0, 4 )
    }
}
else if instance_exists(obj_mario)
{
    if (fallw == 1)
        event_user(7)
    else if (fallw == 0)
    {
        x = obj_mario.x
        if ((global.checkpointroom != -4) && (f_mario == 0))
        {
            y = obj_mario.y
            f_mario = 1
        }
        else if (f_mario == 0)
        {
            y = obj_mario.y
            f_mario = 1
        }
        else
            event_user(8)
    }
}
else if instance_exists(follow)
{
    event_user(6)
    if (follow.object_index == obj_editormanager)
        fallw = 1
    else
        fallw = 0
    x = follow.x
    y = follow.y
}
x = round(x)
y = round(y)
if ((global.apariencia == 3) && (((global.bg_level == "castle") && (global.modo_noche == 0)) || (global.bg_level == "ghost")))
    __background_set( e__BG.X, 0, (__view_get( e__VW.XView, 0 ) / 1.5) )
else if (global.apariencia == 3)
{
    if (global.modo_noche == 0)
    {
        if (((global.bg_level == "ground") && (room_width > 656)) || (((global.bg_level == "underground") && (room_width > 976)) || (((global.bg_level == "ground") && (room_width > 656)) || (((global.bg_level == "forest") && (room_width > 624)) || (((global.bg_level == "desert") && (room_width > 896)) || (((global.bg_level == "sky") && (room_width > 896)) || (((global.bg_level == "airship") && (room_width > 896)) || (((global.bg_level == "snow") && (room_width > 896)) || ((global.bg_level == "underwater") && (room_width > 1024))))))))))
        {
            x_pos = (__view_get( e__VW.XView, 0 ) / (room_width - __view_get( e__VW.WView, 0 )))
            __background_set( e__BG.X, 0, lerp(0, (room_width - __background_get( e__BG.Width, 0 )), x_pos) )
        }
        else
        {
            x_pos = (__view_get( e__VW.XView, 0 ) / (1024 - __view_get( e__VW.WView, 0 )))
            __background_set( e__BG.X, 0, lerp(0, (1024 - __background_get( e__BG.Width, 0 )), x_pos) )
        }
    }
    else if (((global.bg_level == "sky") && (room_width > 896)) || (((global.bg_level == "airship") && (room_width > 896)) || (((global.bg_level == "underwater") && (room_width > 768)) || (((global.bg_level == "snow") && (room_width > 672)) || ((__background_get( e__BG.Index, 0 ) == bg_NSMBU_night) && (room_width > 704))))))
    {
        x_pos = (__view_get( e__VW.XView, 0 ) / (room_width - __view_get( e__VW.WView, 0 )))
        __background_set( e__BG.X, 0, lerp(0, (room_width - __background_get( e__BG.Width, 0 )), x_pos) )
    }
    else
    {
        x_pos = (__view_get( e__VW.XView, 0 ) / (896 - __view_get( e__VW.WView, 0 )))
        __background_set( e__BG.X, 0, lerp(0, (896 - __background_get( e__BG.Width, 0 )), x_pos) )
    }
}
else if ((global.apariencia == 2) && ((global.bg_level != "sky") && (global.bg_level != "airship")))
    __background_set( e__BG.X, 0, (__view_get( e__VW.XView, 0 ) / 1.5) )
if ((__background_get( e__BG.Height, 0 ) < room_height) && (__background_get( e__BG.Height, 0 ) > __view_get( e__VW.HView, 0 )))
    __background_set( e__BG.Y, 0, ((__view_get( e__VW.YView, 0 ) * (room_height - __background_get( e__BG.Height, 0 ))) / (room_height - __view_get( e__VW.HView, 0 ))) )
if (global.instance_deactivate == 1)
{
    if (room != rm_editor)
    {
        if (editor == 0)
        {
            instance_deactivate_object(383)
            instance_deactivate_object(91)
            instance_activate_region((__view_get( e__VW.XView, 0 ) - 48), (__view_get( e__VW.YView, 0 ) - 32), ((__view_get( e__VW.WView, 0 ) + 48) + 48), (__view_get( e__VW.HView, 0 ) + 192), 1)
            instance_deactivate_object(173)
            instance_activate_region((__view_get( e__VW.XView, 0 ) - 32), (__view_get( e__VW.YView, 0 ) - 32), ((__view_get( e__VW.WView, 0 ) + 32) + 32), ((__view_get( e__VW.HView, 0 ) + 48) + 48), 1)
            instance_deactivate_object(430)
            instance_activate_region((__view_get( e__VW.XView, 0 ) - 32), (__view_get( e__VW.YView, 0 ) - 32), ((__view_get( e__VW.WView, 0 ) + 32) + 32), ((__view_get( e__VW.HView, 0 ) + 32) + 32), 1)
        }
    }
}
else
{
    if (obj_levelmanager.editor == 0)
        instance_activate_object(obj_levelmanager)
    instance_activate_object(obj_solidtop)
    instance_activate_object(obj_deactivation)
    instance_activate_object(obj_parent_save)
}
if ((barrier == 0) && instance_exists(obj_mario))
{
    if (obj_mario.x < (__view_get( e__VW.XView, 0 ) + 5))
    {
        obj_mario.x = (__view_get( e__VW.XView, 0 ) + 5)
        if (obj_mario.hspeed < 0)
            obj_mario.hspeed = 0
        if instance_exists(obj_slider)
            obj_slider.x = (__view_get( e__VW.XView, 0 ) + 5)
    }
    else if (obj_mario.x > ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 5))
    {
        obj_mario.x = ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 5)
        if (obj_mario.hspeed > 0)
            obj_mario.hspeed = 0
        if instance_exists(obj_slider)
            obj_slider.x = ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 5)
    }
}
if (global.coins > 99)
{
    global.coins -= 100
    if instance_exists(obj_mario)
    {
        with (instance_create((obj_mario.x - 8), obj_mario.y, obj_score))
            event_user(7)
    }
    else
    {
        with (instance_create((x - 8), y, obj_score))
            event_user(7)
    }
}
if ((pwarning == 0) && (editor == 0))
{
    if ((alarm[10] > 100) && (alarm[10] < 120))
    {
        audio_play_sound(scr_snd_switchalert(), 0, false)
        pwarning = 1
    }
}
if audio_is_playing(scr_snd_hurryup())
{
    if audio_is_playing(levelmusic)
        audio_pause_sound(levelmusic)
    else if audio_is_playing(scr_snd_starman())
        audio_pause_sound(scr_snd_starman())
    else if audio_is_playing(scr_snd_switchsong())
        audio_pause_sound(scr_snd_switchsong())
}
else
{
    if ((global.timer > -1) && (global.timer < 101))
    {
        audio_sound_pitch(levelmusic, 1.25)
        audio_sound_pitch(scr_snd_starman(), 1.25)
        audio_sound_pitch(scr_snd_switchsong(), 1.25)
    }
    else
    {
        audio_sound_pitch(levelmusic, 1)
        audio_sound_pitch(scr_snd_starman(), 1)
        audio_sound_pitch(scr_snd_switchsong(), 1)
    }
    if audio_is_paused(levelmusic)
        audio_resume_sound(levelmusic)
    else if audio_is_paused(scr_snd_starman())
        audio_resume_sound(scr_snd_starman())
    else if audio_is_paused(scr_snd_switchsong())
        audio_resume_sound(scr_snd_switchsong())
}
if (audio_is_playing(snd_es_ovacion) || (audio_is_playing(snd_es_ahh) || (audio_is_playing(snd_es_ubsi) || (audio_is_playing(snd_es_derrumbe) || (audio_is_playing(snd_es_terror) || (audio_is_playing(snd_es_insecto) || (audio_is_playing(snd_es_guitarra) || audio_is_playing(snd_es_gloria))))))))
{
    if audio_is_playing(levelmusic)
        audio_sound_gain(levelmusic, 0.4, 0)
    else if audio_is_playing(scr_snd_starman())
        audio_sound_gain(scr_snd_starman(), 0.4, 0)
    else if audio_is_playing(scr_snd_switchsong())
        audio_sound_gain(scr_snd_switchsong(), 0.4, 0)
}
else
{
    audio_sound_gain(levelmusic, 1, 0)
    audio_sound_gain(scr_snd_starman(), 1, 0)
    audio_sound_gain(scr_snd_switchsong(), 1, 0)
}


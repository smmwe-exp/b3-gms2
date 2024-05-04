x = (((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 26) + obj_cursor.anim_right)
y = (__view_get( e__VW.YView, 0 ) + 184)
if (counter_draw == 1)
    counter_anim += 0.15
if (mouse_check_button(1) && ((obj_levelmanager.editor == 1) && (obj_editormanager.expand_open == 0)))
{
    if (cont > 80)
    {
        audio_play_sound(snd_rocket_go, 0, false)
        sprite_index = spr_rocket_despegue
        image_index = 0
        image_speed = 0.38
        aud = 0
        cont = 0
        ready = 1
        counter_draw = 0
        counter_anim = 12
        obj_editormanager.expand_open = 2
        if instance_exists(obj_creator_jugar_editar)
            audio_pause_sound(obj_creator_jugar_editar.music_editor)
        global.instance_deactivate = 0
        alarm[0] = 120
    }
}
else if (mouse_check_button_released(1) && (sprite_index == spr_rocket_go))
{
    audio_stop_sound(snd_rocket_count)
    sprite_index = spr_rocket
    image_speed = 0
    image_index = 0
    aud = 0
    ready = 0
    cont = 0
    counter_draw = 0
    counter_anim = 0
}


var calculo_x, calculo_y;
if (drag == 1)
{
    if (place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground) && (!place_meeting(obj_creation_preview.x, obj_creation_preview.y, id)))
        drop_lock = 1
    else
        drop_lock = 0
    depth = -19
    x = mouse_x
    y = (mouse_y - 24)
    new_x = (floor((mouse_x / 16)) * 16)
    new_y = (floor((mouse_y / 16)) * 16)
    if (new_x != prev_x)
    {
        if (new_y != prev_y)
            audio_stop_sound(snd_move_object)
        audio_play_sound(snd_move_object, 0, false)
        prev_x = new_x
    }
    else if (new_y != prev_y)
    {
        if (new_x != prev_x)
            audio_stop_sound(snd_move_object)
        audio_play_sound(snd_move_object, 0, false)
        prev_y = new_y
    }
    global.editor_lock = 1
    alarm[0] = 1
}
else
{
    if (global.jugador == 0)
    {
        if (!audio_is_playing(snd_voice_mario_move))
            audio_play_sound(snd_voice_mario_move, 0, false)
    }
    else if (global.jugador == 1)
    {
        if (!audio_is_playing(snd_voice_luigi_move))
            audio_play_sound(snd_voice_luigi_move, 0, false)
    }
    else if (global.jugador == 2)
    {
        if (!audio_is_playing(snd_voice_toad_move))
            audio_play_sound(snd_voice_toad_move, 0, false)
    }
    else if (global.jugador == 3)
    {
        if (!audio_is_playing(snd_voice_toadette_move))
            audio_play_sound(snd_voice_toadette_move, 0, false)
    }
    if (y >= ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) - 48))
        y = ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) - 48)
    else if (y <= (__view_get( e__VW.YView, 0 ) + 39))
        y = (__view_get( e__VW.YView, 0 ) + 39)
    if (x <= (__view_get( e__VW.XView, 0 ) + 68))
        x = (__view_get( e__VW.XView, 0 ) + 68)
    else if (x >= ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 48))
        x = ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 48)
    calculo_x = (x - __view_get( e__VW.XView, 0 ))
    calculo_y = (y - __view_get( e__VW.YView, 0 ))
    x_start = calculo_x
    y_start = calculo_y
    drop_lock = 0
    obj_cursor.move = 0
    depth = layer
    drag_draw = 1
    expand3 = 1
    global.editor_lock = 0
    global.resource_block = 0
}


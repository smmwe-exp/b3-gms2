if (drag == 1)
{
    if ((object_index == obj_koopa_res) || ((object_index == obj_goomba_res) || ((object_index == obj_goombrat_res) || ((object_index == obj_buzzybeetle_res) || ((object_index == obj_spiny_res) || ((object_index == obj_bobomb_res) || ((object_index == obj_pplant_res) || ((object_index == obj_muncher_res) || ((object_index == obj_spike_res) || ((object_index == obj_plant_fire_res) || ((object_index == obj_chainchomp_res) || ((object_index == obj_monty_res) || ((object_index == obj_hammerbro_res) || ((object_index == obj_clown_res) || ((object_index == obj_boomboom_res) || (object_index == obj_blooper_res))))))))))))))))
        image_speed = 0.15
    if (object_index == obj_boo_res)
        image_index = 1
    if ((object_index == obj_egg_res) && (global.apariencia != 2))
    {
        image_speed = 0
        image_index = 0
    }
    if (place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_resource) && ((!place_meeting(obj_creation_preview.x, obj_creation_preview.y, id)) && (!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_nube_res))))
        drop_lock = 1
    else
        drop_lock = 0
    depth = -19
    x_draw = (mouse_x - 8)
    y_draw = (mouse_y - 8)
    x = (floor((mouse_x / 16)) * 16)
    y = (floor((mouse_y / 16)) * 16)
    if (play_sound == 0)
    {
        if ((x != x_start) || (y != y_start))
        {
            audio_play_sound(snd_drag, 0, false)
            play_sound = 1
        }
    }
    if (x != prev_x)
    {
        if (y != prev_y)
            audio_stop_sound(snd_move_object)
        audio_play_sound(snd_move_object, 0, false)
        prev_x = x
    }
    else if (y != prev_y)
    {
        if (x != prev_x)
            audio_stop_sound(snd_move_object)
        audio_play_sound(snd_move_object, 0, false)
        prev_y = y
    }
    global.editor_lock = 1
    alarm[0] = 1
}
else
{
    if ((object_index == obj_egg_res) && (global.apariencia != 2))
        image_speed = 0.25
    else
        image_speed = 0
    if (object_index == obj_onoffplatform_res)
        image_index = 1
    else
        image_index = 0
    if (drop_lock == 1)
    {
        x = x_start
        y = y_start
        audio_play_sound(snd_item_add2, 0, false)
        move_snap(16, 16)
    }
    else
    {
        x = obj_creation_preview.x
        y = obj_creation_preview.y
        move_snap(16, 16)
        audio_play_sound(snd_colocar_objectos, 0, false)
    }
    drop_lock = 0
    depth = layer
    play_sound = 0
    x_draw = x
    y_draw = y
    global.editor_lock = 0
    global.resource_block = 0
}


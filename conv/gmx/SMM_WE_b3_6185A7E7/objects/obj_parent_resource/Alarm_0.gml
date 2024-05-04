if (drag == 1)
{
    if (((object_index == obj_koopa_res) && (global.apariencia != 3)) || ((object_index == obj_koopa_red_res) || (((object_index == obj_goomba_res) && (global.apariencia != 3)) || ((object_index == obj_goombrat_res) || (((object_index == obj_buzzybeetle_res) && (global.apariencia != 3)) || ((object_index == obj_spiny_res) || ((object_index == obj_bobomb_res) || ((object_index == obj_pplant_res) || ((object_index == obj_muncher_res) || ((object_index == obj_spike_res) || ((object_index == obj_plant_fire_res) || ((object_index == obj_chainchomp_res) || ((object_index == obj_monty_res) || ((object_index == obj_hammerbro_res) || ((object_index == obj_clown_res) || ((object_index == obj_boomboom_res) || ((object_index == obj_blooper_res) || ((object_index == obj_cheepcheep_res) || ((object_index == obj_cheepcheep2_res) || ((object_index == obj_bobomb_ready_res) || (object_index == obj_sledgebro_res)))))))))))))))))))))
        image_speed = 0.15
    else if ((object_index == obj_koopa_res) || ((object_index == obj_goomba_res) || (object_index == obj_buzzybeetle_res)))
        image_speed = 0.5
    if (object_index == obj_boo_res)
        image_index = 1
    if (((object_index == obj_egg_res) || (object_index == obj_egg_red_res)) && (global.apariencia != 2))
    {
        image_speed = 0
        image_index = 0
    }
    if (can_cont == 1)
    {
        cont += 0.5
        if instance_exists(obj_ventana)
        {
            with (obj_ventana)
                can_anim2 = 1
            can_cont = 0
            cont = 0
        }
        else if (cont >= 10)
        {
            event_user(0)
            can_cont = 0
            cont = 0
        }
    }
    if ((((place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_resource) && (!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_sounds))) || (place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground2) || place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground3))) && ((!place_meeting(obj_creation_preview.x, obj_creation_preview.y, id)) && ((object_index != obj_oneway_res) && ((object_index != obj_nube_res) && ((object_index != obj_grinder) && ((object_index != obj_vine_res) && ((object_index != obj_bumper_res) && ((object_index != obj_semisolid_platform1) && ((object_index != obj_mushroom_platform_res) && ((object_index != obj_platform_res) && ((object_index != obj_platform_blue_res) && (object_index != obj_puente_res)))))))))))) || place_meeting(x, y, obj_arrow_lock))
        drop_lock = 1
    else
        drop_lock = 0
    depth = -19
    x_draw = (mouse_x + calculo_x)
    y_draw = (mouse_y + calculo_y)
    x = (mouse_x + calculo_x)
    y = (mouse_y + calculo_y)
    if (play_sound == 0)
    {
        if ((x != x_start) || (y != y_start))
        {
            audio_play_sound(snd_drag, 0, false)
            play_sound = 1
            if instance_exists(obj_ventana)
            {
                with (obj_ventana)
                    can_anim2 = 1
            }
        }
    }
    if ((obj_persistent.modo_android == 1) && (obj_cursor.move_view == 0))
    {
        obj_cursor.move_view = 1
        obj_editormanager.expand_open = 2
    }
    if ((floor((x / 16)) * 16) != prev_x)
    {
        if ((floor((y / 16)) * 16) != prev_y)
            audio_stop_sound(snd_move_object)
        audio_play_sound(snd_move_object, 0, false)
        prev_x = (floor((x / 16)) * 16)
        can_cont = 0
        cont = 0
        if instance_exists(obj_ventana)
        {
            with (obj_ventana)
                can_anim2 = 1
        }
    }
    else if ((floor((y / 16)) * 16) != prev_y)
    {
        if ((floor((x / 16)) * 16) != prev_x)
            audio_stop_sound(snd_move_object)
        audio_play_sound(snd_move_object, 0, false)
        prev_y = (floor((y / 16)) * 16)
        can_cont = 0
        cont = 0
        if instance_exists(obj_ventana)
        {
            with (obj_ventana)
                can_anim2 = 1
        }
    }
    global.editor_lock = 1
    alarm[0] = 1
}
else
{
    if (((object_index == obj_egg_res) || (object_index == obj_egg_red_res)) && (global.apariencia != 2))
        image_speed = 0.25
    else
        image_speed = 0
    if ((object_index == obj_onoffplatform_res) || (object_index == obj_pblock2_res))
        image_index = 1
    else if (sprite_index != spr_SMB2_mushroom)
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
        x = (floor(((mouse_x + calculo_x) / 16)) * 16)
        y = (floor(((mouse_y + calculo_y) / 16)) * 16)
        move_snap(16, 16)
        audio_play_sound(snd_colocar_objectos, 0, false)
    }
    drop_lock = 0
    can_cont = 0
    cont = 0
    if (obj_persistent.modo_android == 1)
    {
        obj_cursor.move_view = 0
        obj_editormanager.speed = 0
        if (obj_levelmanager.editor_sonidos == 0)
            obj_editormanager.expand_open = 0
    }
    depth = layer
    play_sound = 0
    x_draw = x
    y_draw = y
    expand3 = 1
    global.editor_lock = 0
    global.resource_block = 0
}


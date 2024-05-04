var marioU, mario_c, mario_o, calculo_x, calculo_y;
global.instance_deactivate = 0
if (global.apariencia == 3)
    marioU = obj_marioU
else
    marioU = obj_mario
if (moment == 0)
{
    scr_edit_to_play()
    if instance_exists(obj_player_trail)
    {
        with (obj_player_trail)
            instance_destroy()
    }
    if (global.autoavance != 0)
    {
        if (global.autoavance == 1)
        {
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), __view_get( e__VW.YView, 0 ), obj_autoscroll))
                velocidad = 0.5
        }
        else if (global.autoavance == 2)
        {
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), __view_get( e__VW.YView, 0 ), obj_autoscroll))
                velocidad = 1
        }
        else if (global.autoavance == 3)
        {
            with (instance_create((__view_get( e__VW.XView, 0 ) + 192), __view_get( e__VW.YView, 0 ), obj_autoscroll))
                velocidad = 1.5
        }
    }
    if ((global.condiciones == 1) && (global.condiciones_type == 0))
    {
        global.condiciones_clear = 1
        if instance_exists(obj_alert_condicion)
        {
            with (obj_alert_condicion)
                instance_destroy()
        }
        with (instance_create((__view_get( e__VW.XView, 0 ) + 54), (__view_get( e__VW.YView, 0 ) + 43), obj_alert_condicion))
        {
            start = 1
            if (global.condiciones_count == 0)
                sprite_index = spr_conidiones_alert_acciones2
            else
                sprite_index = spr_conidiones_alert_acciones
            image_index = 0
        }
    }
    if (global.player_trail != 0)
    {
        with (obj_editormanager)
            alarm[1] = 2
    }
    if (((global.bg_level == "sky") || (global.bg_level == "airship")) && ((global.modo_noche == 1) && ((global.apariencia != 0) && (global.apariencia != 3))))
        __background_set( e__BG.HSpeed, 0, -0.55 )
    else if (((global.bg_level == "sky") || (global.bg_level == "airship")) && ((global.modo_noche == 1) && (global.apariencia == 0)))
        __background_set( e__BG.HSpeed, 0, -1 )
    else if (((global.bg_level == "sky") || (global.bg_level == "airship")) && ((global.modo_noche == 0) && (global.apariencia != 3)))
        __background_set( e__BG.HSpeed, 0, -0.2 )
    obj_levelmanager.editor = 0
    with (obj_cursor)
    {
        item_add = 0
        if (cont_panel_right == 0)
            cont_panel_right = 1
        if (cont_panel_left == 0)
            cont_panel_left = 1
        if (cont_panel_top == 0)
            cont_panel_top = 1
        cont_panel_creator = 1
    }
    alarm[4] = 25
    if instance_exists(obj_bg_selection)
    {
        with (obj_bg_selection)
            instance_destroy()
    }
    if instance_exists(obj_time)
    {
        with (obj_time)
            instance_destroy()
    }
    if instance_exists(obj_toast)
    {
        with (obj_toast)
            instance_destroy()
    }
    audio_play_sound(snd_play_start_create, 0, false)
    if (global.jugador == 0)
        audio_play_sound(snd_letsgo, 0, false)
    else if (global.jugador == 1)
        audio_play_sound(snd_letsgo_luigi, 0, false)
    else if (global.jugador == 2)
        audio_play_sound(snd_letsgo_toad, 0, false)
    else if (global.jugador == 3)
        audio_play_sound(snd_letsgo_toadette, 0, false)
    audio_stop_sound(music_editor)
    audio_stop_sound(snd_dead)
    audio_stop_sound(snd_SMB3_dead)
    audio_stop_sound(snd_SMB_dead)
    global.pink_coins_total = instance_number(obj_pink_coin)
    if (global.pink_coins_total != 0)
        global.pink_coins_draw = 1
    global.coins = 0
    score = 0
    with (obj_levelmanager)
    {
        global.timer = leveltime
        if ((global.timer > 0) && (global.timer < 101))
        {
            alarm[3] = 2
            alarm[2] = 1
        }
        else
            alarm[2] = 1
    }
    audio_play_sound(obj_levelmanager.levelmusic, 99, true)
    mario_c = instance_create(obj_mario_editor.x, obj_mario_editor.y, marioU)
    mario_c.direct = obj_mario_editor.direct
    alarm[8] = 2
    with (obj_mario_editor)
        instance_destroy()
    with (mario_c)
        event_user(6)
    if (obj_levelmanager.editor_sonidos == 1)
    {
        if instance_exists(obj_card_block_sounds)
        {
            with (obj_card_block_sounds)
                event_user(2)
        }
    }
    if ((obj_persistent.modo_android == 1) && (global.controles_tactiles == 1))
    {
        with (obj_persistent)
        {
            event_user(2)
            event_user(3)
        }
    }
    moment = 1
    global.instance_deactivate = 1
}
else
{
    scr_play_to_edit()
    scr_stop_effect_sounds()
    global.keys = 0
    obj_levelmanager.editor = 1
    obj_editormanager.visible = 1
    obj_expand_panels.visible = 1
    obj_expand_panels_left.visible = 1
    obj_expand_paneles_top.visible = 1
    if instance_exists(obj_panel_left)
        obj_panel_left.visible = 1
    if instance_exists(obj_autoscroll)
    {
        with (obj_autoscroll)
            instance_destroy()
    }
    __background_set( e__BG.HSpeed, 0, 0 )
    with (obj_cursor)
    {
        item_add = 0
        if (cont_panel_right == 3)
            cont_panel_right = 2
        if (cont_panel_left == 3)
            cont_panel_left = 2
        if (cont_panel_top == 3)
            cont_panel_top = 2
        cont_panel_creator = 1
    }
    alarm[5] = 10
    global.pink_coins_total = 0
    global.pink_coins = 0
    global.pink_coins = 0
    global.pink_coin1_x = 0
    global.pink_coin1_y = 0
    global.pink_coin2_x = 0
    global.pink_coin2_y = 0
    global.pink_coin3_x = 0
    global.pink_coin3_y = 0
    global.pink_coin4_x = 0
    global.pink_coin4_y = 0
    global.pink_coin5_x = 0
    global.pink_coin5_y = 0
    global.pink_coin6_x = 0
    global.pink_coin6_y = 0
    global.pink_coin7_x = 0
    global.pink_coin7_y = 0
    global.pink_coin8_x = 0
    global.pink_coin8_y = 0
    global.pink_coin9_x = 0
    global.pink_coin9_y = 0
    global.pink_coin10_x = 0
    global.pink_coin10_y = 0
    audio_play_sound(snd_play_start_create, 0, false)
    with (obj_persistent)
        alarm[6] = -1
    with (obj_goalcard)
        alarm[3] = -1
    if instance_exists(obj_invincibility)
    {
        with (obj_invincibility)
            instance_destroy()
    }
    with (obj_persistent)
        alarm[6] = -1
    audio_stop_sound(obj_levelmanager.levelmusic)
    if (obj_levelmanager.levelmusic_temp != 0)
    {
        obj_levelmanager.levelmusic = obj_levelmanager.levelmusic_temp
        obj_levelmanager.levelmusic_temp = 0
    }
    if (obj_levelmanager.sound_effect != snd_SMB_music_ground)
    {
        audio_stop_sound(obj_levelmanager.sound_effect)
        obj_levelmanager.sound_effect = 0
    }
    global.powerup = 0
    audio_stop_sound(snd_SMB_course_clear_castle)
    audio_stop_sound(snd_SMB3_course_clear_castle)
    audio_stop_sound(snd_SMB2_course_clear_castle)
    audio_stop_sound(snd_NSMBU_clear_castle)
    audio_stop_sound(bgm_smwclear_castle)
    audio_stop_sound(snd_SMB3_course_clear)
    audio_stop_sound(bgm_sm1clear)
    audio_stop_sound(snd_SMB2_liana)
    audio_stop_sound(scr_snd_skid())
    audio_stop_sound(snd_switchalert)
    audio_stop_sound(scr_snd_starman())
    audio_stop_sound(scr_snd_clown_damage())
    audio_stop_sound(scr_snd_hurryup())
    audio_play_sound(music_editor, 99, true)
    with (obj_levelmanager)
    {
        global.timer = leveltime
        alarm[2] = -1
        alarm[4] = -1
        alarm[10] = 1
    }
    if instance_exists(marioU)
    {
        mario_o = instance_create(marioU.x, marioU.y, obj_mario_editor)
        mario_o.direct = marioU.direct
        mario_o.s_scalex = mario_o.direct
        calculo_x = (marioU.x - __view_get( e__VW.XView, 0 ))
        calculo_y = (marioU.y - __view_get( e__VW.YView, 0 ))
        mario_o.x_start = calculo_x
        mario_o.y_start = calculo_y
        with (marioU)
            instance_destroy()
    }
    else if instance_exists(obj_deadmario)
    {
        if ((obj_deadmario.y + 16) > (__view_get( e__VW.YView, 0 ) + 200))
        {
            mario_o = instance_create(obj_deadmario.x, (__view_get( e__VW.YView, 0 ) + 136), obj_mario_editor)
            mario_o.direct = 1
            mario_o.s_scalex = mario_o.direct
            calculo_x = (obj_deadmario.x - __view_get( e__VW.XView, 0 ))
            mario_o.x_start = calculo_x
            mario_o.y_start = 136
        }
        else
        {
            mario_o = instance_create(obj_deadmario.x, obj_deadmario.y, obj_mario_editor)
            mario_o.direct = 1
            mario_o.s_scalex = mario_o.direct
            calculo_x = (obj_deadmario.x - __view_get( e__VW.XView, 0 ))
            calculo_y = (obj_deadmario.y - __view_get( e__VW.YView, 0 ))
            mario_o.x_start = calculo_x
            mario_o.y_start = calculo_y
        }
        with (obj_deadmario)
            instance_destroy()
    }
    else if instance_exists(obj_doormario)
    {
        mario_o = instance_create(obj_doormario.x, (__view_get( e__VW.YView, 0 ) + 136), obj_mario_editor)
        mario_o.direct = 1
        mario_o.s_scalex = mario_o.direct
        calculo_x = (obj_doormario.x - __view_get( e__VW.XView, 0 ))
        mario_o.x_start = calculo_x
        mario_o.y_start = 136
        with (obj_doormario)
            instance_destroy()
    }
    else if instance_exists(obj_player_goal_smw_castle)
    {
        if (instance_exists(obj_ground3) && (obj_player_goal_smw_castle.x >= obj_ground3.x))
        {
            mario_o = instance_create((obj_ground3.x + 80), obj_player_goal_smw_castle.y, obj_mario_editor)
            mario_o.direct = obj_player_goal_smw_castle.direct
            mario_o.s_scalex = mario_o.direct
            calculo_x = ((obj_ground3.x + 80) - __view_get( e__VW.XView, 0 ))
            calculo_y = (obj_player_goal_smw_castle.y - __view_get( e__VW.YView, 0 ))
        }
        else
        {
            mario_o = instance_create(obj_player_goal_smw_castle.x, obj_player_goal_smw_castle.y, obj_mario_editor)
            mario_o.direct = obj_player_goal_smw_castle.direct
            mario_o.s_scalex = mario_o.direct
            calculo_x = (obj_player_goal_smw_castle.x - __view_get( e__VW.XView, 0 ))
            calculo_y = (obj_player_goal_smw_castle.y - __view_get( e__VW.YView, 0 ))
        }
        mario_o.x_start = calculo_x
        mario_o.y_start = calculo_y
        with (obj_player_goal_smw_castle)
            instance_destroy()
    }
    else if instance_exists(obj_player_goal_smw)
    {
        mario_o = instance_create(obj_player_goal_smw.x, obj_player_goal_smw.y, obj_mario_editor)
        mario_o.direct = obj_player_goal_smw.direct
        mario_o.s_scalex = mario_o.direct
        calculo_x = (obj_player_goal_smw.x - __view_get( e__VW.XView, 0 ))
        calculo_y = (obj_player_goal_smw.y - __view_get( e__VW.YView, 0 ))
        mario_o.x_start = calculo_x
        mario_o.y_start = calculo_y
        with (obj_player_goal_smw)
            instance_destroy()
    }
    else if instance_exists(obj_player_goal_smb1)
    {
        if (instance_exists(obj_ground3) && (obj_player_goal_smb1.x >= obj_ground3.x))
        {
            mario_o = instance_create((obj_ground3.x + 80), obj_player_goal_smb1.y, obj_mario_editor)
            mario_o.direct = obj_player_goal_smb1.direct
            mario_o.s_scalex = mario_o.direct
            calculo_x = ((obj_ground3.x + 80) - __view_get( e__VW.XView, 0 ))
            calculo_y = (obj_player_goal_smb1.y - __view_get( e__VW.YView, 0 ))
        }
        else
        {
            mario_o = instance_create(obj_player_goal_smb1.x, obj_player_goal_smb1.y, obj_mario_editor)
            mario_o.direct = obj_player_goal_smb1.direct
            mario_o.s_scalex = mario_o.direct
            calculo_x = (obj_player_goal_smb1.x - __view_get( e__VW.XView, 0 ))
            calculo_y = (obj_player_goal_smb1.y - __view_get( e__VW.YView, 0 ))
        }
        mario_o.x_start = calculo_x
        mario_o.y_start = calculo_y
        with (obj_player_goal_smb1)
            instance_destroy()
    }
    else if instance_exists(obj_player_goal_smb3)
    {
        if (instance_exists(obj_ground3) && (obj_player_goal_smb3.x >= obj_ground3.x))
        {
            mario_o = instance_create(obj_ground3.x, obj_player_goal_smb3.y, obj_mario_editor)
            mario_o.direct = obj_player_goal_smb3.direct
            mario_o.s_scalex = mario_o.direct
            calculo_x = (obj_ground3.x - __view_get( e__VW.XView, 0 ))
            calculo_y = (obj_player_goal_smb3.y - __view_get( e__VW.YView, 0 ))
        }
        else
        {
            mario_o = instance_create(obj_player_goal_smb3.x, obj_player_goal_smb3.y, obj_mario_editor)
            mario_o.direct = obj_player_goal_smb3.direct
            mario_o.s_scalex = mario_o.direct
            calculo_x = (obj_player_goal_smb3.x - __view_get( e__VW.XView, 0 ))
            calculo_y = (obj_player_goal_smb3.y - __view_get( e__VW.YView, 0 ))
        }
        mario_o.x_start = calculo_x
        mario_o.y_start = calculo_y
        with (obj_player_goal_smb3)
            instance_destroy()
    }
    else if instance_exists(obj_goalgate)
    {
        mario_o = instance_create((obj_goalgate.x - 32), (__view_get( e__VW.YView, 0 ) + 136), obj_mario_editor)
        mario_o.direct = 1
        mario_o.s_scalex = mario_o.direct
        calculo_x = ((obj_goalgate.x - 32) - __view_get( e__VW.XView, 0 ))
        mario_o.x_start = calculo_x
        mario_o.y_start = 136
    }
    else if instance_exists(obj_goalcard)
    {
        mario_o = instance_create((obj_goalcard.x - 32), (__view_get( e__VW.YView, 0 ) + 136), obj_mario_editor)
        mario_o.direct = 1
        mario_o.s_scalex = mario_o.direct
        calculo_x = ((obj_goalcard.x - 32) - __view_get( e__VW.XView, 0 ))
        mario_o.x_start = calculo_x
        mario_o.y_start = 136
    }
    else if instance_exists(obj_axe_smw)
    {
        mario_o = instance_create((obj_axe_smw.x - 32), (__view_get( e__VW.YView, 0 ) + 136), obj_mario_editor)
        mario_o.direct = 1
        mario_o.s_scalex = mario_o.direct
        calculo_x = ((obj_axe_smw.x - 32) - __view_get( e__VW.XView, 0 ))
        mario_o.x_start = calculo_x
        mario_o.y_start = 136
    }
    if ((obj_persistent.modo_android == 1) && (global.controles_tactiles == 1))
    {
        with (obj_persistent)
        {
            event_user(4)
            event_user(5)
        }
    }
    if instance_exists(obj_parent_save)
    {
        with (obj_parent_save)
            visible = 1
    }
    moment = 0
    global.instance_deactivate = 1
}


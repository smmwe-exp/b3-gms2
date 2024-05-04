var item_c, voice_object, obj_res, this_obj, col_block, col_block_hidden, col_block_note, this_obj_bo, col_boom, col_boom_big, col_bowser, col_bowser_big, col_boomboom, col_thwomp, obj_rest, this_obj_item, col_checkpoint, col_enemy, coli_enemy, coli_muncher, coli_boomboom, col_erase;
x = mouse_x
y = mouse_y
if instance_exists(obj_levelmanager)
{
    if ((obj_levelmanager.editor == 1) && ((x > (__view_get( e__VW.XView, 0 ) + 349)) && ((y > (__view_get( e__VW.YView, 0 ) + 32)) && ((move == 1) && ((anim_right <= 33) && (cont_panel_right == 0))))))
    {
        if (anim_right < 33)
            anim_right += 5.5
        else
            anim_right = 33
    }
    else if ((obj_levelmanager.editor == 1) && ((x < (__view_get( e__VW.XView, 0 ) + 349)) && ((cont_panel_right == 0) && (anim_right > 0))))
    {
        if (anim_right > 0)
            anim_right -= 5.5
        else
            anim_right = 0
    }
}
if ((cont_panel_right == 1) && (anim_right <= 33))
{
    if (anim_right < 33)
        anim_right += 5.5
    else
    {
        anim_right = 33
        cont_panel_right = 3
    }
}
if ((cont_panel_right == 2) && (anim_right >= 0))
{
    if (anim_right > 0)
        anim_right -= 5.5
    else
    {
        anim_right = 0
        cont_panel_right = 0
    }
}
if instance_exists(obj_levelmanager)
{
    if (((obj_levelmanager.editor == 1) && ((x < (__view_get( e__VW.XView, 0 ) + 61)) && ((y > (__view_get( e__VW.YView, 0 ) + 32)) && ((move == 1) && ((anim_left <= 59) && (cont_panel_left == 0)))))) || ((obj_levelmanager.editor == 1) && ((x < (__view_get( e__VW.XView, 0 ) + 61)) && ((y > (__view_get( e__VW.YView, 0 ) + 32)) && ((obj_erase.active == 1) && ((anim_left <= 59) && (cont_panel_left == 0)))))))
    {
        if (anim_left < 58)
            anim_left += 9.7
        else
            anim_left = 58
    }
    else if ((obj_levelmanager.editor == 1) && ((x > (__view_get( e__VW.XView, 0 ) + 61)) && ((cont_panel_left == 0) && (anim_left > 0))))
    {
        if (anim_left > 0)
            anim_left -= 9.7
        else
            anim_left = 0
    }
}
if ((cont_panel_left == 1) && (anim_left <= 58.2))
{
    if (anim_left < 58)
        anim_left += 9.7
    else
    {
        anim_left = 58
        cont_panel_left = 3
    }
}
if ((cont_panel_left == 2) && (anim_left >= -2))
{
    if (anim_left > 0)
        anim_left -= 9.7
    else
    {
        anim_left = 0
        cont_panel_left = 0
    }
}
if instance_exists(obj_levelmanager)
{
    if (((obj_levelmanager.editor == 1) && ((y < (__view_get( e__VW.YView, 0 ) + 36)) && ((move == 1) && ((anim_top <= 34) && (cont_panel_top == 0))))) || ((obj_levelmanager.editor == 1) && ((y < (__view_get( e__VW.YView, 0 ) + 36)) && ((obj_erase.active == 1) && ((anim_top <= 34) && (cont_panel_top == 0))))))
    {
        if (anim_top < 34)
            anim_top += 6.8
        else
            anim_top = 34
    }
    else if ((obj_levelmanager.editor == 1) && ((y > (__view_get( e__VW.YView, 0 ) + 36)) && ((cont_panel_top == 0) && (anim_top > 0))))
    {
        if (anim_top > 0)
            anim_top -= 6.8
        else
            anim_top = 0
    }
}
if ((cont_panel_top == 1) && (anim_top <= 34))
{
    if (anim_top < 34)
        anim_top += 6.8
    else
    {
        anim_top = 34
        cont_panel_top = 3
    }
}
if ((cont_panel_top == 2) && (anim_top >= 0))
{
    if (anim_top > 0)
        anim_top -= 6.8
    else
    {
        anim_top = 0
        cont_panel_top = 0
    }
}
if instance_exists(obj_levelmanager)
{
    if (((obj_levelmanager.editor == 1) && ((x < (__view_get( e__VW.XView, 0 ) + 44)) && ((y > (__view_get( e__VW.YView, 0 ) + 180)) && ((move == 1) && ((anim_creator <= 59) && (cont_panel_creator == 0)))))) || ((obj_levelmanager.editor == 1) && ((x < (__view_get( e__VW.XView, 0 ) + 44)) && ((y > (__view_get( e__VW.YView, 0 ) + 180)) && ((obj_erase.active == 1) && ((anim_creator <= 59) && (cont_panel_creator == 0)))))))
    {
        if (anim_creator < 58)
            anim_creator += 9.7
        else
            anim_creator = 58
    }
    else if ((obj_levelmanager.editor == 1) && ((x > (__view_get( e__VW.XView, 0 ) + 61)) && ((cont_panel_creator == 0) && (anim_creator > 0))))
    {
        if (anim_creator > 0)
            anim_creator -= 9.7
        else
            anim_creator = 0
    }
}
if ((cont_panel_creator == 1) && (anim_creator <= 58.2))
{
    if (anim_creator < 58)
        anim_creator += 9.7
    else
    {
        anim_creator = 58
        cont_panel_creator = 3
    }
}
if ((cont_panel_creator == 2) && (anim_creator >= -2))
{
    if (anim_creator > 0)
        anim_creator -= 9.7
    else
    {
        anim_creator = 0
        cont_panel_creator = 0
    }
}
if (obj_persistent.modo_android == 1)
    visible = 0
if instance_exists(obj_erase)
{
    if (obj_erase.active == 0)
    {
        if (global.jugador == 0)
            sprite_index = spr_cursor_mario
        else if (global.jugador == 1)
            sprite_index = spr_cursor_luigi
        else if (global.jugador == 2)
            sprite_index = spr_cursor_toad
        else if (global.jugador == 3)
            sprite_index = spr_cursor_toadette
    }
}
else if (global.jugador == 0)
    sprite_index = spr_cursor_mario
else if (global.jugador == 1)
    sprite_index = spr_cursor_luigi
else if (global.jugador == 2)
    sprite_index = spr_cursor_toad
else if (global.jugador == 3)
    sprite_index = spr_cursor_toadette
if instance_exists(obj_levelmanager)
{
    if ((obj_levelmanager.editor == 1) && (obj_editormanager.expand_open == 0))
    {
        if (mouse_check_button(1) && ((item_add != obj_lighting) && ((move == 0) && ((object_move == obj_lighting) && ((!place_meeting(x, y, obj_ground)) && ((!place_meeting(x, y, obj_ground2)) && ((!place_meeting(x, y, obj_ground3)) && ((!place_meeting(x, y, obj_inhibidor_vk)) && ((!place_meeting(x, y, obj_card_item)) && ((!place_meeting(x, y, obj_erase)) && ((!place_meeting(x, y, obj_physicsparent)) && ((!place_meeting((x - 8), y, obj_koopa)) && ((!place_meeting((x + 8), y, obj_koopa)) && ((!place_meeting((x - 8), y, obj_koopa_red)) && ((!place_meeting((x + 8), y, obj_koopa_red)) && ((!place_meeting((x - 8), y, obj_monty_chase)) && ((!place_meeting((x + 8), y, obj_monty_chase)) && ((!place_meeting((x - 20), y, obj_clown)) && ((!place_meeting((x - 8), y, obj_galoomba)) && ((!place_meeting((x + 8), y, obj_galoomba)) && ((!place_meeting(x, y, obj_SMB3_goomba)) && ((!place_meeting(x, y, obj_SMB3_goomba2)) && ((!place_meeting((x - 8), y, obj_bobomb)) && ((!place_meeting((x + 8), y, obj_bobomb)) && ((!place_meeting((x - 8), y, obj_spike)) && ((!place_meeting((x + 8), y, obj_spike)) && ((!place_meeting((x - 8), y, obj_jumppiranha)) && ((!place_meeting((x + 8), y, obj_jumppiranha)) && ((!place_meeting((x - 8), y, obj_drybones)) && ((!place_meeting((x + 8), y, obj_drybones)) && ((!place_meeting((x - 8), y, obj_chain_chomp_free)) && ((!place_meeting((x + 8), y, obj_chain_chomp_free)) && ((!place_meeting((x + 8), y, obj_spiny)) && ((!place_meeting((x - 8), y, obj_spiny)) && ((!place_meeting((x - 11), y, obj_hammerbro)) && ((!place_meeting((x - 11), y, obj_sledgebro)) && ((!place_meeting((x - 8), y, obj_podoboo)) && ((!place_meeting((x + 8), y, obj_podoboo)) && ((!place_meeting((x - 8), y, obj_blooper)) && ((!place_meeting((x + 8), y, obj_blooper)) && ((!place_meeting(x, y, obj_key)) && ((!place_meeting(x, y, obj_SMB3_pplant)) && ((!place_meeting((x - 8), y, obj_egg)) && ((!place_meeting((x + 8), y, obj_egg)) && ((!place_meeting((x - 9), y, obj_egg_red)) && ((!place_meeting((x + 9), y, obj_egg_red)) && ((!place_meeting((x + 8), y, obj_buzzybeetle)) && ((!place_meeting((x - 8), y, obj_buzzybeetle)) && ((!place_meeting((x + 8), y, obj_bobomb_ready)) && ((!place_meeting((x - 8), y, obj_bobomb_ready)) && ((!place_meeting((x - 24), y, obj_thwomp)) && ((!place_meeting((x - 48), y, obj_thwomp_big)) && ((!place_meeting((x - 4), y, obj_boomboom)) && ((!place_meeting((x - 8), y, obj_boomboom_big)) && ((!place_meeting((x + 8), y, obj_boo)) && ((!place_meeting((x - 8), y, obj_boo)) && ((!place_meeting((x + 8), y, obj_spiketop)) && ((!place_meeting((x - 8), y, obj_spiketop)) && ((!place_meeting((x - 8), y, obj_magikoopa)) && ((!place_meeting(x, y, obj_estalactita)) && ((!place_meeting((x + 8), y, obj_cheepcheep)) && ((!place_meeting((x - 8), y, obj_cheepcheep)) && ((!place_meeting((x - 3), y, obj_shell_empty)) && ((!place_meeting((x - 3), y, obj_spiny_empty)) && ((!place_meeting(x, y, obj_blockparent)) && ((!place_meeting(x, y, obj_torbellino)) && ((!place_meeting(x, y, obj_coin)) && ((!place_meeting(x, y, obj_pink_coin)) && ((!place_meeting((x - 12), y, obj_plant_fire)) && ((!place_meeting(x, y, obj_block_hidden)) && ((!place_meeting(x, y, obj_bullebill_base)) && ((!place_meeting(x, y, obj_coin10)) && ((!place_meeting(x, y, obj_coin30)) && ((!place_meeting(x, y, obj_coin50)) && ((!place_meeting(x, y, obj_wings)) && ((!place_meeting(x, y, obj_tuberia)) && ((!place_meeting(x, y, obj_nube)) && ((!place_meeting(x, y, obj_checkpoint)) && ((!place_meeting(x, y, obj_block_rock)) && ((!place_meeting(x, y, obj_block_ice)) && ((!place_meeting(x, y, obj_vine_green)) && ((!place_meeting(x, y, obj_icecoin)) && ((!place_meeting(x, y, obj_pinchos)) && ((!place_meeting(x, y, obj_bumper)) && ((!place_meeting(x, y, obj_onoffblock)) && ((!place_meeting(x, y, obj_onoffplatform)) && ((!place_meeting(x, y, obj_onoffplatform_blue)) && ((!place_meeting(x, y, obj_pblock)) && ((!place_meeting(x, y, obj_anti_pblock)) && ((!place_meeting(x, y, obj_arrow)) && ((!place_meeting((x - 18), (y - 18), obj_angrysun)) && ((!place_meeting((x - 18), (y - 18), obj_happymoon)) && ((!place_meeting(x, y, obj_dec3)) && ((!place_meeting(x, y, obj_hongo1)) && ((!place_meeting((x - 32), y, obj_cinta)) && ((!place_meeting((x + 32), y, obj_cinta)) && ((!place_meeting(x, y, obj_puente)) && ((!place_meeting(x, y, obj_bowser)) && ((!place_meeting(x, y, obj_bowser_big)) && ((!place_meeting(x, y, obj_onewaygate)) && ((!place_meeting(x, y, obj_banzaibill)) && ((!place_meeting((x + 64), y, obj_banzaibill)) && ((!place_meeting(x, y, obj_door_switch)) && ((!place_meeting(x, y, obj_door_lock)) && ((!place_meeting(x, y, obj_platform_moving)) && ((!place_meeting(x, y, obj_platform_falling)) && ((!place_meeting(x, y, obj_donut)) && ((!place_meeting(x, y, obj_powerupparent)) && ((!place_meeting(x, y, obj_creator_jugar_editar)) && ((!place_meeting(x, y, obj_card_bg)) && ((!place_meeting(x, y, obj_bg_selection)) && ((!place_meeting(x, y, obj_panel_expand)) && ((!place_meeting(x, y, obj_panel_left)) && ((!place_meeting(x, y, obj_panel_time)) && ((!place_meeting(x, y, obj_expand)) && (!place_meeting(x, y, obj_door)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
        {
            item_c = instance_create(x, y, item_add)
            with (item_c)
            {
                if (object_index == obj_monty_chase)
                {
                    x = (floor((x / 8)) * 8)
                    y = (floor((y / 8)) * 8)
                }
                else
                {
                    x = (floor((x / 16)) * 16)
                    y = (floor((y / 16)) * 16)
                }
                xstart = x
                ystart = y
                if (global.snds_editor == 1)
                {
                    if (object_index == obj_ground)
                    {
                        audio_sound_pitch(snd_voice_ground, other.v_ground)
                        if (other.v_ground == 2.25)
                            other.v_ground = 1.25
                        else
                            other.v_ground += 0.25
                        audio_stop_sound(snd_voice_ground)
                        audio_play_sound(snd_voice_ground, 0, false)
                        audio_stop_sound(snd_item_add2)
                        audio_play_sound(snd_item_add2, 0, false)
                    }
                    else if (object_index == obj_coin)
                    {
                        audio_sound_pitch(snd_voice_coin, other.v_coin)
                        if (other.v_coin == 2.25)
                            other.v_coin = 1.25
                        else
                            other.v_coin += 0.25
                        audio_stop_sound(snd_voice_coin)
                        audio_play_sound(snd_voice_coin, 0, false)
                        audio_stop_sound(snd_colocar_objectos)
                        audio_play_sound(snd_colocar_objectos, 0, false)
                    }
                    else if ((object_index == obj_1up) && (global.modo_noche == 1))
                    {
                        audio_sound_pitch(snd_voice_rotten, 1.25)
                        audio_stop_sound(snd_voice_rotten)
                        audio_play_sound(snd_voice_rotten, 0, false)
                        audio_stop_sound(snd_colocar_objectos)
                        audio_play_sound(snd_colocar_objectos, 0, false)
                    }
                    else if ((object_index == obj_angrysun) && (global.modo_noche == 1))
                    {
                        audio_sound_pitch(snd_voice_moon, 1.25)
                        audio_stop_sound(snd_voice_moon)
                        audio_play_sound(snd_voice_moon, 0, false)
                        audio_stop_sound(snd_colocar_objectos)
                        audio_play_sound(snd_colocar_objectos, 0, false)
                    }
                    else
                    {
                        voice_object = scr_search_voice(object_index)
                        if voice_object
                        {
                            audio_sound_pitch(voice_object, 1.25)
                            audio_stop_sound(voice_object)
                            audio_play_sound(voice_object, 0, false)
                            audio_stop_sound(snd_colocar_objectos)
                            audio_play_sound(snd_colocar_objectos, 0, false)
                        }
                        else
                        {
                            audio_stop_sound(snd_item_add2)
                            audio_play_sound(snd_item_add2, 0, false)
                        }
                    }
                }
                else
                {
                    audio_stop_sound(snd_item_add2)
                    audio_play_sound(snd_item_add2, 0, false)
                }
                if ((object_index == obj_flipblock) || ((object_index == obj_block) || ((object_index == obj_noteblock) || ((object_index == obj_coin) || ((object_index == obj_galoomba) || ((object_index == obj_galoomba2) || ((object_index == obj_koopa) || ((object_index == obj_monty_chase) || ((object_index == obj_bobomb) || ((object_index == obj_pswitch) || ((object_index == obj_mushroom) || ((object_index == obj_spring) || ((object_index == obj_block_pow_hold) || ((object_index == obj_drybones) || ((object_index == obj_spiny) || ((object_index == obj_jumppiranha) || ((object_index == obj_buzzybeetle) || ((object_index == obj_pswitch) || ((object_index == obj_block_rock) || ((object_index == obj_block_ice) || ((object_index == obj_fireflower) || ((object_index == obj_cap) || ((object_index == obj_clown) || ((object_index == obj_pinchos) || ((object_index == obj_egg) || ((object_index == obj_bumper) || ((object_index == obj_pswitch) || ((object_index == obj_checkpoint) || ((object_index == obj_1up) || ((object_index == obj_rotten) || ((object_index == obj_hammerbro) || ((object_index == obj_thwomp) || ((object_index == obj_boo) || ((object_index == obj_star) || ((object_index == obj_grinder) || ((object_index == obj_onoffblock) || ((object_index == obj_onoffplatform) || ((object_index == obj_onoffplatform_blue) || ((object_index == obj_cheepcheep) || ((object_index == obj_dec3) || ((object_index == obj_hongo1) || ((object_index == obj_banzaibill) || ((object_index == obj_shell_empty) || ((object_index == obj_spiny_empty) || ((object_index == obj_koopa_red) || ((object_index == obj_spring_land) || ((object_index == obj_clown_fire) || ((object_index == obj_coin10) || ((object_index == obj_coin30) || ((object_index == obj_coin50) || ((object_index == obj_muncher) || ((object_index == obj_nube) || ((object_index == obj_bobomb_ready) || ((object_index == obj_bullebill_base) || ((object_index == obj_block_hidden) || ((object_index == obj_platform_falling) || ((object_index == obj_platform_moving) || ((object_index == obj_cinta) || ((object_index == obj_cinta_fast) || ((object_index == obj_donut) || ((object_index == obj_donut_red) || ((object_index == obj_puente) || ((object_index == obj_boomboom) || ((object_index == obj_bowser) || ((object_index == obj_bowser_big) || ((object_index == obj_door) || ((object_index == obj_door_switch) || ((object_index == obj_arrow) || ((object_index == obj_plant_fire) || ((object_index == obj_sledgebro) || ((object_index == obj_podoboo) || ((object_index == obj_egg) || ((object_index == obj_egg_red) || ((object_index == obj_blooper) || ((object_index == obj_angrysun) || ((object_index == obj_happymoon) || ((object_index == obj_onewaygate) || ((object_index == obj_torbellino) || ((object_index == obj_spiketop) || ((object_index == obj_SMB3_goomba) || ((object_index == obj_SMB3_goomba2) || ((object_index == obj_SMB3_pplant) || ((object_index == obj_brick) || ((object_index == obj_tuberia) || ((object_index == obj_estalactita) || ((object_index == obj_estalactita2) || ((object_index == obj_musicblock) || ((object_index == obj_chain_chomp_free) || ((object_index == obj_key) || ((object_index == obj_door_lock) || ((object_index == obj_pink_coin) || ((object_index == obj_magikoopa) || ((object_index == obj_icecoin) || ((object_index == obj_pblock) || ((object_index == obj_anti_pblock) || ((object_index == obj_vine_green) || (object_index == obj_spike)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
                {
                    obj_res = instance_create(x, y, obj_restart_edition)
                    obj_res.obj = object_get_name(object_index)
                    obj_res.x_pos = x
                    obj_res.y_pos = y
                    obj_res.id_obj = id
                    obj_generador = obj_res.id
                }
            }
            if (item_add == 43)
            {
                with (obj_card_item)
                    active = 0
                item_add = 0
            }
            if ((item_add == 144) && (instance_number(obj_pink_coin) == 5))
            {
                with (obj_card_item)
                    active = 0
                item_add = 0
            }
        }
        if (mouse_check_button(1) && ((move == 1) && (object_move != obj_lighting)))
        {
            if (object_move != obj_lighting)
            {
                if instance_exists(object_move)
                {
                    if ((object_move.object_index == obj_wings) || (object_move.object_index == obj_mario_editor))
                    {
                        object_move.x = x
                        object_move.y = (y - 25)
                    }
                    else
                    {
                        object_move.x = x
                        object_move.y = y
                    }
                    object_move.depth = -19
                }
            }
            if (!instance_exists(obj_grid_selected))
            {
                if ((object_move.object_index == obj_clown) || ((object_move.object_index == obj_clown_fire) || ((object_move.object_index == obj_boomboom) || ((object_move.object_index == obj_thwomp) || ((object_move.object_index == obj_arrow) || (object_move.object_index == obj_checkpoint))))))
                {
                    with (instance_create(x, y, obj_grid_selected))
                        value = 2
                }
                else if ((object_move.object_index == obj_door) || ((object_move.object_index == obj_door_exit) || ((object_move.object_index == obj_door_switch) || ((object_move.object_index == obj_door_switch_exit) || ((object_move.object_index == obj_koopa) || ((object_move.object_index == obj_drybones) || ((object_move.object_index == obj_mario_editor) || ((object_move.object_index == obj_hammerbro) || (object_move.object_index == obj_jumppiranha)))))))))
                {
                    with (instance_create(x, y, obj_grid_selected))
                        value = 1
                }
                else if (object_move.object_index == obj_bumper)
                {
                    with (instance_create(x, y, obj_grid_selected))
                        value = 3
                }
                else if (object_move.object_index == obj_dec3)
                {
                    with (instance_create(x, y, obj_grid_selected))
                        value = 4
                }
                else
                {
                    with (instance_create(x, y, obj_grid_selected))
                        value = 0
                }
            }
            image_index = 1
        }
        if (mouse_check_button_released(1) && ((move == 1) && (object_move != obj_lighting)))
        {
            image_index = 0
            with (object_move)
            {
                x = (floor((x / 16)) * 16)
                y = (floor((y / 16)) * 16)
                xstart = x
                ystart = y
            }
            object_move.image_speed = 0
            object_move.image_index = 0
            object_move.depth = obj_depth
            obj_depth = 0
            audio_play_sound(snd_colocar_objectos, 0, false)
            with (object_move)
            {
                if ((object_index == obj_door) || ((object_index == obj_door_switch) || (object_index == obj_door_lock)))
                    alarm[2] = 15
            }
            if ((object_move.object_index == obj_mushroom) || ((object_move.object_index == obj_fireflower) || ((object_move.object_index == obj_cap) || ((object_move.object_index == obj_1up) || ((object_move.object_index == obj_star) || ((object_move.object_index == obj_egg) || ((object_move.object_index == obj_egg_red) || ((object_move.object_index == obj_vine_green) || ((object_move.object_index == obj_spring) || ((object_move.object_index == obj_pswitch) || ((object_move.object_index == obj_spring_land) || ((object_move.object_index == obj_block_pow_hold) || ((object_move.object_index == obj_clown) || ((object_move.object_index == obj_clown_fire) || ((object_move.object_index == obj_shell_empty) || ((object_move.object_index == obj_spiny_empty) || ((object_move.object_index == obj_key) || ((object_move.object_index == obj_koopa) || ((object_move.object_index == obj_koopa_red) || ((object_move.object_index == obj_buzzybeetle) || ((object_move.object_index == obj_spiny) || ((object_move.object_index == obj_cheepcheep) || ((object_move.object_index == obj_galoomba) || ((object_move.object_index == obj_galoomba2) || ((object_move.object_index == obj_bobomb) || ((object_move.object_index == obj_bobomb_ready) || ((object_move.object_index == obj_hammerbro) || ((object_move.object_index == obj_boo) || ((object_move.object_index == obj_muncher) || ((object_move.object_index == obj_monty_chase) || ((object_move.object_index == obj_jumppiranha) || ((object_move.object_index == obj_drybones) || ((object_move.object_index == obj_plant_fire) || ((object_move.object_index == obj_sledgebro) || (object_move.object_index == obj_podoboo)))))))))))))))))))))))))))))))))))
            {
                this_obj = scr_sprite_get_constant(object_move.sprite_index)
                col_block = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_block, 0, 0)
                col_block_hidden = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_block_hidden, 0, 0)
                col_block_note = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_noteblock, 0, 0)
                if (col_block && (object_move != obj_lighting))
                {
                    col_block.sprout = this_obj
                    col_block.obj_generador.sprout_obj = col_block.sprout
                    with (object_move)
                    {
                        with (obj_generador)
                            instance_destroy()
                        instance_destroy()
                    }
                    object_move = obj_lighting
                }
                else if (col_block_hidden && (object_move != obj_lighting))
                {
                    col_block_hidden.sprout = this_obj
                    col_block_hidden.obj_generador.sprout_obj = col_block_hidden.sprout
                    with (object_move)
                    {
                        with (obj_generador)
                            instance_destroy()
                        instance_destroy()
                    }
                    object_move = obj_lighting
                }
                else if (col_block_note && ((object_move != obj_lighting) && (col_block_note.object_index != obj_musicblock)))
                {
                    col_block_note.sprout = this_obj
                    col_block_note.obj_generador.sprout_obj = col_block_note.sprout
                    with (object_move)
                    {
                        with (obj_generador)
                            instance_destroy()
                        instance_destroy()
                    }
                    object_move = obj_lighting
                }
            }
            if (object_move != obj_lighting)
            {
                if (object_move.object_index == obj_key)
                {
                    this_obj_bo = scr_sprite_get_constant(object_move.sprite_index)
                    col_boom = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_boomboom, 0, 0)
                    col_boom_big = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_boomboom_big, 0, 0)
                    col_bowser = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bowser, 0, 0)
                    col_bowser_big = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bowser_big, 0, 0)
                    if (col_boom && ((((col_boom.apilado == 0) && (col_boom.apilar == 0)) || ((col_boom.apilado == 0) && (col_boom.apilar == 1))) && (object_move != obj_lighting)))
                    {
                        audio_play_sound(snd_SMB3_getkey, 0, false)
                        col_boom.sprout_key = this_obj_bo
                        col_boom.obj_generador.sprout_obj = col_boom.sprout_key
                        with (object_move)
                        {
                            with (obj_generador)
                                instance_destroy()
                            instance_destroy()
                        }
                        object_move = obj_lighting
                    }
                    else if (col_boom_big && (object_move != obj_lighting))
                    {
                        audio_play_sound(snd_SMB3_getkey, 0, false)
                        col_boom_big.sprout_key = this_obj_bo
                        col_boom_big.obj_generador.sprout_obj = col_boom_big.sprout_key
                        with (object_move)
                        {
                            with (obj_generador)
                                instance_destroy()
                            instance_destroy()
                        }
                        object_move = obj_lighting
                    }
                    else if (col_bowser && (object_move != obj_lighting))
                    {
                        audio_play_sound(snd_SMB3_getkey, 0, false)
                        col_bowser.sprout_key = this_obj_bo
                        col_bowser.obj_generador.sprout_obj = col_bowser.sprout_key
                        with (object_move)
                        {
                            with (obj_generador)
                                instance_destroy()
                            instance_destroy()
                        }
                        object_move = obj_lighting
                    }
                    else if (col_bowser_big && (object_move != obj_lighting))
                    {
                        audio_play_sound(snd_SMB3_getkey, 0, false)
                        col_bowser_big.sprout_key = this_obj_bo
                        col_bowser_big.obj_generador.sprout_obj = col_bowser_big.sprout_key
                        with (object_move)
                        {
                            with (obj_generador)
                                instance_destroy()
                            instance_destroy()
                        }
                        object_move = obj_lighting
                    }
                }
            }
            if (object_move != obj_lighting)
            {
                if (object_move.object_index == obj_mushroom)
                {
                    col_boomboom = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_boomboom, 0, 0)
                    col_thwomp = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_thwomp, 0, 0)
                    col_bowser = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bowser, 0, 0)
                    if (col_boomboom && (object_move != obj_lighting))
                    {
                        audio_play_sound(scr_snd_powerup(), 0, false)
                        with (col_boomboom)
                        {
                            with (instance_create(x, (y - 16), obj_boomboom_big))
                            {
                                obj_rest = instance_create(x, y, obj_restart_edition)
                                obj_rest.obj = object_get_name(object_index)
                                obj_rest.x_pos = x
                                obj_rest.y_pos = y
                                obj_rest.id_obj = id
                                obj_generador = obj_rest.id
                            }
                            with (obj_generador)
                                instance_destroy()
                            instance_destroy()
                        }
                        with (object_move)
                        {
                            with (obj_generador)
                                instance_destroy()
                            instance_destroy()
                        }
                        object_move = obj_lighting
                    }
                    else if (col_bowser && (object_move != obj_lighting))
                    {
                        audio_play_sound(scr_snd_powerup(), 0, false)
                        with (col_bowser)
                        {
                            with (instance_create(x, (y - 16), obj_bowser_big))
                            {
                                obj_rest = instance_create(x, y, obj_restart_edition)
                                obj_rest.obj = object_get_name(object_index)
                                obj_rest.x_pos = x
                                obj_rest.y_pos = y
                                obj_rest.id_obj = id
                                obj_generador = obj_rest.id
                            }
                            with (obj_generador)
                                instance_destroy()
                            instance_destroy()
                        }
                        with (object_move)
                        {
                            with (obj_generador)
                                instance_destroy()
                            instance_destroy()
                        }
                        object_move = obj_lighting
                    }
                    else if (col_thwomp && (object_move != obj_lighting))
                    {
                        audio_play_sound(scr_snd_powerup(), 0, false)
                        with (col_thwomp)
                        {
                            with (instance_create(x, (y - 16), obj_thwomp_big))
                            {
                                obj_rest = instance_create(x, y, obj_restart_edition)
                                obj_rest.obj = object_get_name(object_index)
                                obj_rest.x_pos = x
                                obj_rest.y_pos = y
                                obj_rest.id_obj = id
                                obj_generador = obj_rest.id
                            }
                            with (obj_generador)
                                instance_destroy()
                            instance_destroy()
                        }
                        with (object_move)
                        {
                            with (obj_generador)
                                instance_destroy()
                            instance_destroy()
                        }
                        object_move = obj_lighting
                    }
                }
            }
            if (object_move != obj_lighting)
            {
                if ((object_move.object_index == obj_mushroom) || ((object_move.object_index == obj_fireflower) || ((object_move.object_index == obj_cap) || ((object_move.object_index == obj_1up) || (object_move.object_index == obj_star)))))
                {
                    this_obj_item = scr_sprite_get_constant(object_move.sprite_index)
                    col_checkpoint = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_checkpoint, 0, 0)
                    if (col_checkpoint && (object_move != obj_lighting))
                    {
                        col_checkpoint.sprout = this_obj_item
                        col_checkpoint.obj_generador.sprout_obj = col_checkpoint.sprout
                        with (object_move)
                        {
                            with (obj_generador)
                                instance_destroy()
                            instance_destroy()
                        }
                        object_move = obj_lighting
                    }
                }
            }
            if (object_move != obj_lighting)
            {
                if (object_move.object_index == obj_wings)
                {
                    col_enemy = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_enemyparent, 0, 0)
                    if (col_enemy && (col_enemy.obj_generador != obj_lighting))
                    {
                        audio_play_sound(snd_add_wings, 0, false)
                        col_enemy.wings = 1
                        col_enemy.obj_generador.wings_obj = 1
                        with (object_move)
                            instance_destroy()
                        object_move = obj_lighting
                        move = 0
                    }
                    else
                    {
                        with (instance_create((object_move.x - 10), (object_move.y + 12), obj_wings_dead))
                            direct = -1
                        with (object_move)
                            instance_destroy()
                        object_move = obj_lighting
                        move = 0
                    }
                }
            }
            if (object_move != obj_lighting)
            {
                if ((object_move.object_index != obj_grinder) && (object_move.object_index != obj_banzaibill))
                {
                    if ((object_move.object_index == obj_koopa) || ((object_move.object_index == obj_koopa_red) || ((object_move.object_index == obj_galoomba) || ((object_move.object_index == obj_galoomba2) || ((object_move.object_index == obj_muncher) || ((object_move.object_index == obj_drybones) || ((object_move.object_index == obj_boo) || ((object_move.object_index == obj_hammerbro) || ((object_move.object_index == obj_thwomp) || ((object_move.object_index == obj_bobomb) || ((object_move.object_index == obj_jumppiranha) || ((object_move.object_index == obj_buzzybeetle) || ((object_move.object_index == obj_spiny) || ((object_move.object_index == obj_monty_chase) || ((object_move.object_index == obj_cheepcheep) || ((object_move.object_index == obj_boomboom) || ((object_move.object_index == obj_plant_fire) || (object_move.object_index == obj_sledgebro))))))))))))))))))
                    {
                        coli_enemy = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_enemyparent, 0, 0)
                        coli_muncher = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_muncher, 0, 0)
                        coli_boomboom = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_boomboom, 0, 0)
                        if (coli_enemy && ((coli_enemy.id != object_move.id) && ((coli_enemy.object_index != obj_banzaibill) && ((coli_enemy.object_index != obj_grinder) && ((coli_enemy.apilado == 0) && (object_move.apilado == 0))))))
                        {
                            audio_play_sound(snd_powerup, 0, false)
                            coli_enemy.apilar = 1
                            coli_enemy.obj_apilar = object_get_name(object_move.object_index)
                            coli_enemy.obj_generador.g_apilar = 1
                            coli_enemy.obj_generador.g_obj_apilar = object_get_name(object_move.object_index)
                            if (object_move.wings == 1)
                            {
                                coli_enemy.obj_apilar_wings = 1
                                coli_enemy.obj_generador.g_obj_apilar_wings = 1
                            }
                            with (object_move)
                            {
                                with (obj_generador)
                                    instance_destroy()
                                instance_destroy()
                            }
                            object_move = obj_lighting
                            move = 0
                        }
                        else if (coli_muncher && ((coli_muncher.id != object_move.id) && ((coli_muncher.apilado == 0) && (object_move.apilado == 0))))
                        {
                            audio_play_sound(snd_powerup, 0, false)
                            coli_muncher.apilar = 1
                            coli_muncher.obj_apilar = object_get_name(object_move.object_index)
                            coli_muncher.obj_generador.g_apilar = 1
                            coli_muncher.obj_generador.g_obj_apilar = object_get_name(object_move.object_index)
                            if (object_move.wings == 1)
                            {
                                coli_muncher.obj_apilar_wings = 1
                                coli_muncher.obj_generador.g_obj_apilar_wings = 1
                            }
                            with (object_move)
                            {
                                with (obj_generador)
                                    instance_destroy()
                                instance_destroy()
                            }
                            object_move = obj_lighting
                            move = 0
                        }
                        else if (coli_boomboom && ((coli_boomboom.id != object_move.id) && ((coli_boomboom.apilar == 0) && (object_move.apilado == 0))))
                        {
                            audio_play_sound(snd_powerup, 0, false)
                            coli_boomboom.apilar = 1
                            coli_boomboom.obj_apilar = object_get_name(object_move.object_index)
                            coli_boomboom.obj_generador.g_apilar = 1
                            coli_boomboom.obj_generador.g_obj_apilar = object_get_name(object_move.object_index)
                            if (object_move.wings == 1)
                            {
                                coli_boomboom.obj_apilar_wings = 1
                                coli_boomboom.obj_generador.g_obj_apilar_wings = 1
                            }
                            with (object_move)
                            {
                                with (obj_generador)
                                    instance_destroy()
                                instance_destroy()
                            }
                            object_move = 0
                            move = 0
                        }
                    }
                }
            }
            object_move = obj_lighting
            move = 0
            if instance_exists(obj_grid_selected)
            {
                with (obj_grid_selected)
                    instance_destroy()
            }
        }
        if (mouse_check_button(1) && (obj_erase.active == 1))
            image_index = 1
        else if (obj_erase.active == 1)
            image_index = 0
        col_erase = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_erase, 0, 0)
        if (col_erase && (mouse_check_button_pressed(1) && ((col_erase.active == 0) && ((move == 0) && ((obj_creator_jugar_editar.image_speed == 0) && (!place_meeting(x, y, obj_panel_expand)))))))
        {
            audio_play_sound(snd_item_select, 0, false)
            with (obj_card_item)
                active = 0
            item_add = 0
            if instance_exists(obj_bg_selection)
            {
                with (obj_bg_selection)
                    instance_destroy()
            }
            sprite_index = spr_cursor_clean
            col_erase.active = 1
            with (col_erase)
                alarm[1] = 20
        }
        else if (col_erase && (mouse_check_button_pressed(1) && ((col_erase.active == 1) && (move == 0))))
        {
            audio_play_sound(snd_item_deselect, 0, false)
            col_erase.active = 0
            col_erase.can_clean = 0
            image_index = 0
        }
    }
}


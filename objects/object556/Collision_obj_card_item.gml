var item_c, obj_res;
if instance_exists(obj_levelmanager)
{
    if (mouse_check_button_pressed(1) && ((obj_levelmanager.editor == 1) && ((obj_editormanager.expand_open == 0) && ((!place_meeting(x, y, obj_panel_expand)) && ((other.obj_draw == 118) && (instance_number(obj_pink_coin) == 5))))))
    {
        audio_stop_sound(snd_wrong)
        audio_play_sound(snd_wrong, 0, false)
    }
    else if ((obj_levelmanager.editor == 1) && ((obj_editormanager.expand_open == 0) && ((!place_meeting(x, y, obj_panel_expand)) && ((other.obj_draw != 105) && (other.obj_draw != 78)))))
    {
        if (mouse_check_button_pressed(1) && (other.active == 0))
        {
            audio_play_sound(snd_select_tile, 0, false)
            obj_erase.active = 0
            image_index = 0
            if instance_exists(obj_bg_selection)
            {
                with (obj_bg_selection)
                    instance_destroy()
            }
            if (other.obj != obj_wings)
            {
                with (obj_card_item)
                    active = 0
                other.active = 1
                item_add = other.obj
            }
            if (other.obj != obj_angrysun)
                cont = 1
        }
        else if (mouse_check_button_pressed(1) && ((other.active == 1) && (cont_add < 12)))
        {
            audio_stop_sound(snd_select_tile)
            audio_play_sound(snd_item_deselect, 0, false)
            with (obj_card_item)
                active = 0
            item_add = obj_lighting
            other.active = 0
            if (other.obj != obj_angrysun)
                cont = 1
        }
        if (mouse_check_button(1) && (cont == 1))
            cont_add++
        if (cont_add > 12)
        {
            cont = 0
            audio_stop_sound(snd_select_tile)
            audio_stop_sound(snd_item_deselect)
            audio_play_sound(snd_drag, 0, false)
            obj_erase.active = 0
            image_index = 0
            with (obj_card_item)
                active = 0
            item_add = other.obj
            item_c = instance_create(x, y, item_add)
            with (item_c)
            {
                if ((object_index == obj_flipblock) || ((object_index == obj_block) || ((object_index == obj_noteblock) || ((object_index == obj_coin) || ((object_index == obj_galoomba) || ((object_index == obj_koopa) || ((object_index == obj_monty_chase) || ((object_index == obj_bobomb) || ((object_index == obj_pswitch) || ((object_index == obj_mushroom) || ((object_index == obj_spring) || ((object_index == obj_block_pow_hold) || ((object_index == obj_drybones) || ((object_index == obj_spiny) || ((object_index == obj_jumppiranha) || ((object_index == obj_buzzybeetle) || ((object_index == obj_pswitch) || ((object_index == obj_block_rock) || ((object_index == obj_block_ice) || ((object_index == obj_fireflower) || ((object_index == obj_cap) || ((object_index == obj_clown) || ((object_index == obj_clown_fire) || ((object_index == obj_pinchos) || ((object_index == obj_egg) || ((object_index == obj_bumper) || ((object_index == obj_pswitch) || ((object_index == obj_checkpoint) || ((object_index == obj_1up) || ((object_index == obj_rotten) || ((object_index == obj_hammerbro) || ((object_index == obj_thwomp) || ((object_index == obj_boo) || ((object_index == obj_star) || ((object_index == obj_grinder) || ((object_index == obj_onoffblock) || ((object_index == obj_onoffplatform) || ((object_index == obj_onoffplatform_blue) || ((object_index == obj_cheepcheep) || ((object_index == obj_dec3) || ((object_index == obj_hongo1) || ((object_index == obj_banzaibill) || ((object_index == obj_shell_empty) || ((object_index == obj_spiny_empty) || ((object_index == obj_koopa_red) || ((object_index == obj_spring_land) || ((object_index == obj_coin10) || ((object_index == obj_coin30) || ((object_index == obj_coin50) || ((object_index == obj_muncher) || ((object_index == obj_nube) || ((object_index == obj_bobomb_ready) || ((object_index == obj_bullebill_base) || ((object_index == obj_block_hidden) || ((object_index == obj_platform_falling) || ((object_index == obj_platform_moving) || ((object_index == obj_cinta) || ((object_index == obj_cinta_fast) || ((object_index == obj_donut) || ((object_index == obj_donut_red) || ((object_index == obj_puente) || ((object_index == obj_galoomba2) || ((object_index == obj_boomboom) || ((object_index == obj_bowser) || ((object_index == obj_door) || ((object_index == obj_door_switch) || ((object_index == obj_arrow) || ((object_index == obj_plant_fire) || ((object_index == obj_sledgebro) || ((object_index == obj_podoboo) || ((object_index == obj_egg) || ((object_index == obj_egg_red) || ((object_index == obj_blooper) || ((object_index == obj_onewaygate) || ((object_index == obj_torbellino) || ((object_index == obj_spiketop) || ((object_index == obj_angrysun) || ((object_index == obj_happymoon) || ((object_index == obj_SMB3_goomba) || ((object_index == obj_SMB3_goomba2) || ((object_index == obj_SMB3_pplant) || ((object_index == obj_brick) || ((object_index == obj_tuberia) || ((object_index == obj_estalactita) || ((object_index == obj_estalactita2) || ((object_index == obj_musicblock) || ((object_index == obj_chain_chomp_free) || ((object_index == obj_key) || ((object_index == obj_door_lock) || ((object_index == obj_pink_coin) || ((object_index == obj_magikoopa) || ((object_index == obj_icecoin) || ((object_index == obj_pblock) || ((object_index == obj_anti_pblock) || ((object_index == obj_vine_green) || (object_index == obj_spike))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
                {
                    obj_res = instance_create(x, y, obj_restart_edition)
                    obj_res.obj = object_get_name(object_index)
                    obj_res.x_pos = x
                    obj_res.y_pos = y
                    obj_res.id_obj = id
                    obj_generador = obj_res.id
                    if ((object_index == obj_door) || ((object_index == obj_door_switch) || (object_index == obj_door_lock)))
                        seguir = 1
                }
            }
            move = 1
            object_move = item_c.id
            cont_add = 0
            item_add = 0
        }
        if mouse_check_button_released(1)
        {
            cont_add = 0
            cont = 0
        }
    }
}


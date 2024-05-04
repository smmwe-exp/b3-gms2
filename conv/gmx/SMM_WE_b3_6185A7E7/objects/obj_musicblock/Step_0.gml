var col_phy, col_hold, player;
if instance_exists(mysolid)
{
    mysolid.x = x
    mysolid.y = y
}
if (ready == 1)
{
    if ((vspeed < 0) && ((down == 0) && (y <= (ystart - 16))))
    {
        vspeed = 1.5
        down = 1
    }
    if ((vspeed > 0) && ((down == 1) && (y >= ystart)))
    {
        down = 0
        alarm[1] = 1
    }
    if ((vspeed > 0) && ((up == 0) && (y >= (ystart + 16))))
    {
        up = 1
        vspeed = -1.5
    }
    else if ((vspeed < 0) && ((up == 1) && (y <= ystart)))
    {
        up = 0
        alarm[1] = 1
    }
}
if (instance_exists(obj_mario) && (place_meeting(x, y, obj_mario) && (((obj_mario.y + 16) >= y) && (obj_mario.state < 2))))
{
    if (obj_mario.x > (x + 8))
    {
        with (obj_mario)
            x++
    }
    else
    {
        with (obj_mario)
            x--
    }
}
if (!ready)
{
    col_phy = collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_physicsparent, 0, 0)
    col_hold = collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_holdparent, 0, 0)
    player = collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, bbox_bottom, obj_blockparent, 1, 0)
    if (player && (player.vspeed < 0))
    {
        ready = 1
        vspeed = -1.5
    }
    else if (collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_mario, 0, 0) && (obj_mario.bbox_bottom < bbox_top))
    {
        ready = 1
        vspeed = 1.5
        with (obj_mario)
        {
            if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
                vspeed = -3.225
            else
                vspeed = -5.225
            y--
            state = 2
            if keyboard_check(global.saltar)
            {
                jumpnow = 1
                audio_stop_sound(snd_musicblock)
                audio_stop_sound(snd_musicblock2)
                if (other.sonido == 0)
                {
                    audio_play_sound(snd_musicblock, 0, false)
                    other.sonido = 1
                }
                else
                {
                    audio_play_sound(snd_musicblock2, 0, false)
                    other.sonido = 0
                }
            }
            else if (keyboard_check(global.saltar_spin) && ((holding == 0) && (global.apariencia == 2)))
            {
                audio_play_sound(snd_spin, 0, false)
                state = 2
                isduck = 0
                y--
                stompstyle = 1
                audio_stop_sound(snd_musicblock)
                audio_stop_sound(snd_musicblock2)
                if (other.sonido == 0)
                {
                    audio_play_sound(snd_musicblock, 0, false)
                    other.sonido = 1
                }
                else
                {
                    audio_play_sound(snd_musicblock2, 0, false)
                    other.sonido = 0
                }
            }
            else
            {
                jumpnow = 2
                audio_stop_sound(snd_musicblock)
                audio_stop_sound(snd_musicblock2)
                if (other.sonido == 0)
                {
                    audio_play_sound(snd_musicblock, 0, false)
                    other.sonido = 1
                }
                else
                {
                    audio_play_sound(snd_musicblock2, 0, false)
                    other.sonido = 0
                }
            }
        }
        event_user(1)
    }
    if (col_hold && ((col_hold.bbox_bottom < bbox_top) && (obj_levelmanager.editor == 0)))
    {
        ready = 1
        vspeed = 1.5
        col_hold.hspeed = 0
        if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
            col_hold.vspeed = -2.225
        else
            col_hold.vspeed = -5.225
        y--
        audio_stop_sound(snd_musicblock)
        audio_stop_sound(snd_musicblock2)
        if (sonido == 0)
        {
            audio_play_sound(snd_musicblock, 0, false)
            sonido = 1
        }
        else
        {
            audio_play_sound(snd_musicblock2, 0, false)
            sonido = 0
        }
    }
    if ((col_phy && ((col_phy.bbox_bottom < bbox_top) && ((col_phy.visible == 1) && ((col_phy.object_index != obj_banzaibill) && ((col_phy.object_index != obj_fire_clown) && ((col_phy.object_index != obj_cap) && ((col_phy.object_index != obj_podoboo) && ((col_phy.object_index != obj_angrysun) && ((col_phy.object_index != obj_yoshifire) && ((col_phy.object_index != obj_yoshifire_one) && ((col_phy.object_index != obj_cheepcheep) && ((col_phy.object_index != obj_cheepcheep2) && ((col_phy.object_index != obj_thwomp) && ((col_phy.object_index != obj_grinder) && ((col_phy.object_index != obj_boo) && ((col_phy.object_index != obj_cannonball) && ((col_phy.object_index != obj_cannonball_red) && ((col_phy.object_index != obj_helmet) && ((col_phy.object_index != obj_helmet_spiny) && ((col_phy.object_index != obj_player_goal_smb1) && ((col_phy.object_index != obj_player_goal_smw_castle) && ((col_phy.object_index != obj_bulletbill) && ((col_phy.object_index != obj_bulletbull_red) && ((col_phy.object_index != obj_torbellino) && (col_phy.object_index != obj_parcarry))))))))))))))))))))))))) || ((col_phy && ((col_phy.bbox_bottom < bbox_top) && ((col_phy.object_index == obj_player_goal_smb1) && ((col_phy.ready == 2) || (col_phy.ready == 3))))) || (col_phy && ((col_phy.bbox_bottom < bbox_top) && ((col_phy.object_index == obj_player_goal_smw_castle) && (col_phy.fall == 1))))))
    {
        ready = 1
        vspeed = 1.5
        if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
        {
            if ((col_phy.object_index == obj_clown) || ((col_phy.object_index == obj_clown_fire) || (col_phy.object_index == obj_blooper)))
                col_phy.vspeed = -0.5
            else
                col_phy.vspeed = -2.225
        }
        else if ((col_phy.object_index == obj_clown) || ((col_phy.object_index == obj_clown_fire) || (col_phy.object_index == obj_blooper)))
            col_phy.vspeed = -1.5
        else
            col_phy.vspeed = -5.225
        y--
        if (col_phy.object_index == obj_hammerbro)
        {
            with (col_phy)
            {
                alarm[3] = 30
                throw = 1
            }
        }
        else if (col_phy.object_index == obj_sledgebro)
        {
            with (col_phy)
            {
                alarm[4] = 20
                if (global.apariencia == 0)
                    sprite_index = spr_SMB_sledgebro_throw
                else if (global.apariencia == 1)
                    sprite_index = spr_SMB3_sledgebro_throw
                else if (global.apariencia == 2)
                    sprite_index = spr_sledgebro_throw
                image_speed = 0
            }
        }
        audio_stop_sound(snd_musicblock)
        audio_stop_sound(snd_musicblock2)
        if (sonido == 0)
        {
            audio_play_sound(snd_musicblock, 0, false)
            sonido = 1
        }
        else
        {
            audio_play_sound(snd_musicblock2, 0, false)
            sonido = 0
        }
    }
}


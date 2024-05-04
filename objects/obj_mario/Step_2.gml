if instance_exists(obj_levelmanager)
    pmeter = obj_levelmanager.pmeter
if (isduck == 0)
{
    if (global.powerup == 0)
        mask_index = spr_smallmask
    else if (global.powerup == -77)
        mask_index = spr_megamask
    else
        mask_index = spr_bigmask
    if ((global.powerup == 2) || ((global.powerup == -49) || (global.powerup == -50)))
    {
        if (firing > 0)
            firing--
    }
    else
        firing = 0
    if (global.powerup == -39)
    {
        if ((state == 2) && (stompstyle == 0))
        {
            if (wiggle > 1)
                wiggle--
            if (wiggle > 12)
                image_index = 3
            else if (wiggle > 8)
                image_index = 2
            else if (wiggle > 4)
                image_index = 1
            else if (wiggle > 1)
                image_index = 2
            else if (wiggle == 1)
                image_index = 1
        }
        else
            wiggle = 0
    }
    else
        wiggle = 0
    if (holding == 0)
    {
        if ((state < 2) && ((pmeter > 5) && (((direct == 1) && ((hspeed < 0) && keyboard_check(global.derecha))) || ((direct == -1) && ((hspeed > 0) && keyboard_check(global.izquierda))))))
        {
            sprite_index = scr_marioskid()
            image_speed = 0
            image_index = 0
            if (skidnow == 0)
            {
                skidnow = 1
                if (global.apariencia != 0)
                    audio_play_sound(scr_snd_skid(), 1, true)
            }
        }
        else if (state == 0)
        {
            if (caped > 0)
            {
                if instance_exists(obj_mario_transform2)
                    image_speed = 0
                else
                    image_speed = 0.3
                sprite_index = scr_mariowarp()
            }
            else if (firing > 0)
            {
                image_speed = 0
                if ((firing < 6) && (firing > 3))
                    image_index = 1
                else
                {
                    image_index = 0
                    sprite_index = scr_marioshoot()
                }
            }
            else if instance_exists(obj_mario_transform2)
            {
                if (skidnow == 1)
                {
                    sprite_index = scr_marioskid()
                    audio_stop_sound(scr_snd_skid())
                }
                else if (obj_mario_transform2.m_hspeed != 0)
                    sprite_index = scr_mariowalk()
                else
                    sprite_index = scr_marioidle()
            }
            else
            {
                sprite_index = scr_marioidle()
                image_speed = 0
                if (isup == 1)
                    sprite_index = scr_marioup()
            }
        }
        else if (state == 1)
        {
            if (caped > 0)
            {
                if instance_exists(obj_mario_transform2)
                    image_speed = 0
                else
                    image_speed = 0.3
                sprite_index = scr_mariowarp()
            }
            else if (firing > 0)
            {
                image_speed = 0
                if ((firing < 6) && (firing > 3))
                    image_index = 1
                else
                {
                    image_index = 0
                    sprite_index = scr_marioshoot()
                }
            }
            else
            {
                if ((global.bg_level == "snow") && (global.modo_noche == 1))
                    image_speed = abs((hspeed / 5))
                else
                    image_speed = abs((hspeed / 6))
                if (global.powerup == -29)
                {
                    sprite_index = scr_mariowalk()
                    if ((!audio_is_playing(snd_SMB_smalljump)) && (pmeter < 6))
                        audio_play_sound(snd_SMB_smalljump, 0, false)
                }
                else if instance_exists(obj_mario_transform2)
                {
                    if (skidnow == 1)
                    {
                        sprite_index = scr_marioskid()
                        image_speed = 0
                        image_index = 0
                        audio_stop_sound(scr_snd_skid())
                    }
                    else
                    {
                        image_speed = 0
                        if (pmeter < 6)
                            sprite_index = scr_mariowalk()
                        else if ((global.apariencia == 0) || (global.apariencia == 4))
                            sprite_index = scr_mariowalk()
                        else
                            sprite_index = scr_mariorun()
                    }
                }
                else if ((pmeter < 6) || ((global.apariencia == 0) || (global.apariencia == 4)))
                    sprite_index = scr_mariowalk()
                else
                    sprite_index = scr_mariorun()
            }
        }
        else if (state == 2)
        {
            if (isswim == 1)
            {
                if (caped > 0)
                {
                    if instance_exists(obj_mario_transform2)
                        image_speed = 0
                    else
                        image_speed = 0.3
                    sprite_index = scr_mariowarp()
                }
                else if (noisy == 0)
                {
                    if (vspeed < 0)
                    {
                        sprite_index = scr_marioswim()
                        if (global.apariencia == 0)
                            image_speed = 0.35
                        else
                            image_speed = 0.16
                    }
                    else
                    {
                        sprite_index = scr_mario_swim_idle()
                        image_speed = 0.15
                    }
                }
            }
            else if (stompstyle == 1)
            {
                if instance_exists(obj_mario_transform2)
                    image_speed = 0
                else
                    image_speed = 0.4
                sprite_index = scr_mariowarp()
            }
            else if (caped > 0)
            {
                if instance_exists(obj_mario_transform2)
                    image_speed = 0
                else
                    image_speed = 0.3
                sprite_index = scr_mariowarp()
            }
            else if (firing > 0)
            {
                image_speed = 0
                if ((firing < 6) && (firing > 3))
                    image_index = 1
                else
                    image_index = 0
                sprite_index = scr_marioshoot()
            }
            else if (modo_vuelo == 1)
            {
                if (place_free(x, (y + 1)) && (vspeed > 0))
                {
                    if ((sprite_index != spr_mario_cap_fly_acender) && ((sprite_index != spr_mario_cap_fly_decender) && ((sprite_index != spr_mario_cap_fly_acender_decender) && ((sprite_index != spr_luigi_cap_fly_acender) && ((sprite_index != spr_luigi_cap_fly_decender) && ((sprite_index != spr_luigi_cap_fly_acender_decender) && ((sprite_index != spr_toad_cap_fly_acender) && ((sprite_index != spr_toad_cap_fly_decender) && ((sprite_index != spr_toad_cap_fly_acender_decender) && ((sprite_index != spr_toadette_cap_fly_acender) && ((sprite_index != spr_toadette_cap_fly_decender) && (sprite_index != spr_toadette_cap_fly_acender_decender))))))))))))
                    {
                        sprite_index = scr_mario_cap_fly()
                        image_speed = 0.2
                    }
                }
                else if ((sprite_index != spr_mario_cap_fly_acender) && ((sprite_index != spr_luigi_cap_fly_acender) && ((sprite_index != spr_toad_cap_fly_acender) && (sprite_index != spr_toadette_cap_fly_acender))))
                {
                    sprite_index = scr_mario_cap_fly()
                    image_speed = 0
                }
            }
            else if (pmeter < 6)
            {
                if ((global.apariencia == 1) && ((global.powerup != 0) && instance_exists(obj_invincibility)))
                {
                    sprite_index = scr_mariojumpstar()
                    image_speed = 0.4
                }
                else
                {
                    sprite_index = scr_mariojump()
                    if (global.powerup == -78)
                        image_speed = 0.2
                    if (global.powerup != -39)
                    {
                        if ((place_free(x, (y + 1)) && (vspeed > 0)) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                        {
                            if ((global.powerup == -78) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0)) && ((jumpnow != 0) && (s_hen == 1))))
                            {
                                audio_play_sound(snd_SMB_hen_jump_fall, 0, false)
                                s_hen = 0
                                sprite_index = scr_mariodrop()
                            }
                            else if ((global.apariencia == 0) && (jumpnow == 0))
                            {
                                sprite_index = scr_mariowalk()
                                image_index = 0
                            }
                            else
                            {
                                sprite_index = scr_mariodrop()
                                if ((global.apariencia == 4) && (global.jugador == 1))
                                    image_speed = 0.2
                            }
                        }
                    }
                    else if (wiggle == 0)
                    {
                        image_speed = 0
                        if ((place_free(x, (y + 1)) && (vspeed > 0)) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                            image_index = 3
                        else
                            image_index = 0
                    }
                }
            }
            else if ((global.apariencia == 1) && ((global.powerup != 0) && ((global.powerup != -39) && ((global.powerup != -29) && instance_exists(obj_invincibility)))))
            {
                sprite_index = scr_mariojumpstar()
                image_speed = 0.4
            }
            else if collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0)
            {
                if ((global.apariencia == 0) && (jumpnow == 0))
                {
                    sprite_index = scr_mariowalk()
                    image_index = 0
                }
                else
                {
                    sprite_index = scr_mariodrop()
                    if ((global.apariencia == 4) && (global.jugador == 1))
                        image_speed = 0.2
                }
            }
            else
            {
                if ((global.apariencia == 0) || (global.apariencia == 4))
                {
                    if ((place_free(x, (y + 1)) && (vspeed > 0)) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                    {
                        if ((global.powerup == -78) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0)) && ((jumpnow != 0) && (s_hen == 1))))
                        {
                            audio_play_sound(snd_SMB_hen_jump_fall, 0, false)
                            s_hen = 0
                            sprite_index = scr_mariodrop()
                        }
                        else
                        {
                            sprite_index = scr_mariodrop()
                            if ((global.apariencia == 4) && (global.jugador == 1))
                                image_speed = 0.2
                        }
                    }
                    else
                    {
                        sprite_index = scr_mariojump()
                        if (global.powerup == -78)
                            image_speed = 0.2
                    }
                }
                else if (global.powerup == -29)
                {
                    if ((place_free(x, (y + 1)) && (vspeed > 0)) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                        sprite_index = scr_mariodrop()
                    else
                        sprite_index = scr_mariojump()
                }
                else
                    sprite_index = scr_mariorunjump()
                if (global.powerup == -39)
                {
                    if (wiggle == 0)
                    {
                        image_speed = 0
                        if ((place_free(x, (y + 1)) && (vspeed > 0)) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                            image_index = 0
                        else
                            image_index = 2
                    }
                }
            }
        }
        if (global.powerup == -29)
        {
            if (isswim == 1)
            {
                if (swimtype == 0)
                    sprite_index = scr_marioswim()
                if (swimtype == 1)
                    sprite_index = scr_marioswim2()
                if (swimtype == 2)
                    sprite_index = scr_marioswim3()
                if (noisy == 1)
                    image_speed = 0.15
                else
                    image_speed = 0
            }
        }
    }
    else
    {
        if (state == 0)
        {
            image_speed = 0
            image_index = 0.99
        }
        if (state == 1)
        {
            if (turning == 0)
                image_speed = abs((hspeed / 10))
            else
            {
                image_speed = 0
                image_index = 1
            }
        }
        if (state == 2)
        {
            if (turning == 0)
            {
                if ((isswim == 1) && (((holding == 2) || (holding == 1)) && (global.apariencia != 0)))
                {
                    image_speed = 0
                    if (vspeed > 0)
                        image_speed = 0.16
                    else
                        image_index = 0
                }
                else if ((holding == 2) && ((stompstyle == 1) && (isswim == 0)))
                    image_speed = 0.4
                else
                {
                    image_speed = 0
                    if (global.powerup != -39)
                    {
                        if ((global.powerup != 0) && (global.apariencia == 1))
                            image_index = 2
                        else
                            image_index = 1
                    }
                    else if (((wiggle == 0) && (place_free(x, (y + 1)) && (vspeed > 0))) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                        image_index = 2
                    else
                        image_index = 1
                }
            }
            else
            {
                image_speed = 0
                image_index = 1
            }
        }
        if (turning == 1)
            sprite_index = scr_mariowarp()
        if (((holding == 1) || (holding == 2)) && ((isswim == 1) && ((gravity != 0) && (global.apariencia != 0))))
            sprite_index = scr_marioswimhold()
        else if ((holding == 2) && ((stompstyle == 1) && (isswim == 0)))
            sprite_index = scr_mariowarp()
        else if ((holding == 1) || (holding == 2))
        {
            if ((global.apariencia == 1) && ((global.powerup == -39) && (vspeed != 0)))
                sprite_index = scr_mariojumphold()
            else if (global.powerup == -29)
            {
                if (pmeter < 6)
                    sprite_index = scr_mariohold()
                else
                    sprite_index = scr_mariorun()
            }
            else
                sprite_index = scr_mariohold()
            if ((isuphold == 1) && ((jumpnow == 0) && (state == 0)))
                sprite_index = scr_mariouphold()
        }
    }
    if (state == 3)
    {
        sprite_index = scr_marioclimb()
        if ((global.apariencia < 2) || (global.apariencia == 4))
        {
            if (vspeed == 0)
            {
                image_speed = 0
                if ((global.apariencia == 4) && audio_is_playing(snd_SMB2_liana))
                    audio_stop_sound(snd_SMB2_liana)
            }
            else
            {
                image_speed = 0.15
                if ((global.apariencia == 4) && (!audio_is_playing(snd_SMB2_liana)))
                    audio_play_sound(snd_SMB2_liana, 1, true)
            }
        }
        else if (global.apariencia == 2)
        {
            if (speed == 0)
            {
                image_speed = 0
                image_index = 2
            }
            else
            {
                image_speed = 0.25
                if (image_index > 1.8)
                    image_index = 0
            }
        }
    }
    else if (state == 4)
    {
        sprite_index = scr_marioskid()
        if ((skidnow == 0) && (global.apariencia != 0))
        {
            skidnow = 1
            audio_play_sound(scr_snd_skid(), 1, true)
        }
    }
    if ((iamkicking == 1) && ((stompstyle == 0) && (global.apariencia != 0)))
        sprite_index = scr_mariokick()
}
else if (isduck == 1)
{
    if (global.powerup == 0)
        mask_index = spr_smallduckmask
    else if (global.powerup == -77)
    {
        if (instance_exists(obj_kuriboshoe) || instance_exists(obj_kuriboshoe2))
            mask_index = spr_megamask
        else
            mask_index = spr_mega_mask_duck
    }
    else
        mask_index = spr_smallmask
    if (keyboard_check(global.derecha) && ((!keyboard_check(global.izquierda)) && ((disablecontrols == 0) && ((global.apariencia != 0) || ((global.apariencia == 0) && (vspeed == 0))))))
        direct = 1
    else if (keyboard_check(global.izquierda) && ((!keyboard_check(global.derecha)) && ((disablecontrols == 0) && ((global.apariencia != 0) || ((global.apariencia == 0) && (vspeed == 0))))))
        direct = -1
    if (global.powerup == -39)
    {
        if ((state == 2) && (stompstyle == 0))
        {
            if (wiggle > 1)
                wiggle--
            if (wiggle > 12)
                image_index = 3
            else if (wiggle > 8)
                image_index = 2
            else if (wiggle > 4)
                image_index = 1
            else if (wiggle > 1)
                image_index = 2
            else if (wiggle == 1)
                image_index = 1
        }
        else
            wiggle = 0
    }
    else
        wiggle = 0
    if ((iamkicking == 1) && (global.apariencia == 4))
        sprite_index = scr_mariokick()
    else if (isduckhold == 1)
    {
        sprite_index = scr_marioduckhold()
        if (jump_loaded == 60)
            image_speed = 0.3
        else
        {
            image_speed = 0
            image_index = 0
        }
    }
    else
    {
        sprite_index = scr_marioduck()
        if ((place_free(x, (y + 1)) && ((vspeed > 0) && (global.powerup == -39))) || (collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0) && ((global.powerup == -39) && (wiggle == 0))))
        {
            image_speed = 0
            image_index = 2
        }
        else if (jump_loaded == 60)
            image_speed = 0.3
        else
        {
            image_speed = 0
            image_index = 0
        }
    }
}
if ((sprite_index != scr_marioskid()) && ((skidnow == 1) && (!instance_exists(obj_mario_transform2))))
{
    audio_stop_sound(scr_snd_skid())
    skidnow = 0
}
if ((sprite_index != scr_marioclimb()) && audio_is_playing(snd_SMB2_liana))
    audio_stop_sound(snd_SMB2_liana)


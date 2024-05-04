if ((kickme == 1) && (!instance_exists(obj_invincibility)))
{
    if (held == 0)
    {
        if (scr_canhold() && ((!instance_exists(obj_invincibility)) && (!inwall)))
        {
            if (global.apariencia == 3)
            {
                audio_play_sound(choose(441, 442), 0, false)
                with (other.id)
                {
                    triple_jump = 0
                    triple_count = 0
                }
            }
            other.holding = 2
            if ((global.apariencia == 2) && (other.isduck == 1))
                isduckhold = 1
            held = 1
            depth = -7
            gravity = 0
            speed = 0
        }
        else if ((bbox_bottom < ((other.bbox_top - other.vspeed) + 5)) && ((vspeed >= 0) && (((sprite_index == spr_shell_buzzy_empty) || ((sprite_index == spr_SMB3_shell_empty) || ((sprite_index == spr_SMB3_shell_empty_night) || ((sprite_index == spr_SMB_shell_empty) || (sprite_index == spr_SMB_shell_empty_night))))) && (other.helmet == 0))))
        {
            audio_play_sound(snd_helmet_add, 0, false)
            obj_mario.helmet = 1
            instance_create(obj_mario.x, (obj_mario.y + 15), obj_helmet)
            instance_destroy()
        }
        else if ((bbox_bottom < ((other.bbox_top - other.vspeed) + 5)) && ((vspeed >= 0) && (((sprite_index == spr_SMB_shell_empty_spiny) || ((sprite_index == spr_SMB3_shell_spiny_empty) || (sprite_index == spr_shell_spiny_empty))) && (other.helmet == 0))))
        {
            audio_play_sound(snd_helmet_spiny_add, 0, false)
            obj_mario.helmet = 1
            instance_create(obj_mario.x, (obj_mario.y + 15), obj_helmet_spiny)
            with (instance_create((obj_mario.x - 4), (obj_mario.y + 14), obj_smoke))
                sprite_index = spr_sparkles_helmet
            instance_destroy()
        }
        else if (inmune == 0)
        {
            if (((other.stompstyle == 1) || (global.yoshi == 1)) && ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && (other.vspeed > 0)))
            {
                if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && (other.vspeed > 0))
                {
                    if (sprite_index == spr_shell_spiny_empty)
                    {
                        with (other.id)
                            event_user(1)
                        audio_play_sound(snd_stomp, 0, false)
                        instance_create(other.x, (other.y + 22), obj_spinthump)
                    }
                    else
                    {
                        with (obj_mario)
                            event_user(1)
                        instance_create((((bbox_left + bbox_right) / 2) - 8), y, obj_spinsmoke)
                        instance_destroy()
                    }
                }
            }
            else if ((global.yoshi == 2) && ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && (other.vspeed > 0)))
            {
                if ((sprite_index == spr_SMB3_shell_spiny_empty) || (sprite_index == spr_SMB_shell_empty_spiny))
                {
                    with (other.id)
                        event_user(1)
                    if (global.apariencia < 2)
                    {
                        if instance_exists(obj_kuribo_drybones)
                            audio_play_sound(snd_SMB3_kick, 0, false)
                        else
                            audio_play_sound(snd_step_enemy, 0, false)
                    }
                    else
                        audio_play_sound(snd_kick, 0, false)
                    instance_create(other.x, (other.y + 22), obj_spinthump)
                }
                else
                {
                    with (other.id)
                        event_user(1)
                    audio_play_sound(snd_step_enemy, 0, false)
                    instance_create(other.x, (other.y + 22), obj_spinthump)
                    event_user(0)
                }
            }
            else if ((global.apariencia == 4) && ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && ((other.y < (y - 29)) && (other.y > (y - 32)))))
            {
            }
            else if ((vspeed >= 0) || ((vspeed >= 0) && (global.yoshi > 0)))
            {
                if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && ((sprite_index == spr_shell_spiny_empty) || ((sprite_index == spr_SMB3_shell_spiny_empty) || (sprite_index == spr_SMB_shell_empty_spiny))))
                {
                    with (obj_mario)
                        event_user(0)
                }
                audio_play_sound(scr_snd_kick(), 0, false)
                with (instance_create(x, y, obj_smoke))
                    sprite_index = spr_spinthump
                with (obj_mario)
                {
                    if (holding == 0)
                        event_user(7)
                }
                alarm[5] = -1
                with (instance_create(x, y, obj_shell_held))
                {
                    if (other.sprite_index == spr_shell_down_inside)
                        sprite_index = spr_shell_down
                    else if (other.sprite_index == spr_shell_inside)
                        sprite_index = spr_shell
                    else if (other.sprite_index == spr_shell_red_inside)
                        sprite_index = spr_shell_red
                    else if (other.sprite_index == spr_shell_red_down_inside)
                        sprite_index = spr_shell_red_down
                    else if (other.sprite_index == spr_buzzy_shake)
                        sprite_index = spr_shell_buzzy
                    else if (other.sprite_index == spr_buzzy_shake_down)
                        sprite_index = spr_shell_buzzy_down
                    else if (other.sprite_index == spr_spiny_shake)
                        sprite_index = spr_spiny_dead
                    else if (other.sprite_index == spr_SMB3_buzzy_shake)
                        sprite_index = spr_SMB3_shell_buzzy
                    else if (other.sprite_index == spr_SMB3_buzzy_shake_down)
                        sprite_index = spr_SMB3_shell_buzzy_down
                    else if (other.sprite_index == spr_SMB3_buzzy_shake_night)
                        sprite_index = spr_SMB3_shell_buzzy_night
                    else if (other.sprite_index == spr_SMB3_buzzy_shake_down_night)
                        sprite_index = spr_SMB3_shell_buzzy_down_night
                    else if (other.sprite_index == spr_SMB3_spiny_shake)
                        sprite_index = spr_SMB3_spiny_dead
                    else
                        sprite_index = other.sprite_index
                    if instance_exists(obj_mario)
                    {
                        koopainside = other.koopainside
                        if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || ((global.modo_noche == 1) && (global.bg_level == "airship"))))
                        {
                            if ((!instance_exists(obj_mario)) || (obj_mario.x < (x + 8)))
                            {
                                prevhspeed = 2.5
                                hspeed = 2.5
                            }
                            else
                            {
                                prevhspeed = -2.5
                                hspeed = -2.5
                            }
                        }
                        else if ((!instance_exists(obj_mario)) || (obj_mario.x < (x + 8)))
                        {
                            prevhspeed = 3.8
                            hspeed = 3.8
                        }
                        else
                        {
                            prevhspeed = -3.8
                            hspeed = -3.8
                        }
                    }
                    if (obj_mario.gravity != 0)
                        shell_drop = 1
                    inmune = 1
                    alarm[2] = 12
                }
                instance_destroy()
            }
        }
    }
}


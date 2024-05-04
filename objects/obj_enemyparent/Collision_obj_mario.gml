var altura, v_speed;
if ((stomp != -1) && ((other.invincible != -1) && (!instance_exists(obj_slider))))
{
    if ((sprite_index == spr_shell_buzzy_empty) || ((sprite_index == spr_shell_spiny_empty) || ((sprite_index == spr_SMB3_shell_empty) || ((sprite_index == spr_SMB3_shell_empty_night) || ((sprite_index == spr_SMB3_shell_spiny_empty) || ((sprite_index == spr_SMB_shell_empty) || (sprite_index == spr_SMB_shell_empty_spiny)))))))
    {
        altura = 12
        v_speed = vspeed
    }
    else if (object_index == obj_shell_held)
    {
        altura = 15
        v_speed = 0
    }
    else
    {
        altura = 5
        v_speed = vspeed
    }
    if ((other.bbox_bottom < ((bbox_top - vspeed) + altura)) && ((object_index != obj_thwomp) && ((object_index != obj_grinder) && ((object_index != obj_crumblebones) && (global.yoshi == 2)))))
    {
        if (object_index == obj_bobomb_hold)
            event_user(1)
        else
        {
            with (other.id)
                event_user(1)
            if instance_exists(obj_kuribo_drybones)
                scr_musicalscale_kick(other.id, id, 1)
            else
                scr_musicalscale(other.id, id, 1)
            instance_create(other.x, (other.y + 22), obj_spinthump)
            event_user(0)
        }
    }
    else if ((other.bbox_bottom < ((bbox_top - vspeed) + altura)) && ((object_index != obj_thwomp) && ((object_index != obj_grinder) && ((object_index != obj_crumblebones) && ((object_index != obj_spiny) && ((object_index != obj_jumppiranha) && (global.powerup == -77)))))))
    {
        if (object_index == obj_bobomb_hold)
            event_user(1)
        else if ((object_index == obj_shell_held) && ((sprite_index == spr_shell_spiny_empty) || ((sprite_index == spr_SMB3_shell_spiny_empty) || (sprite_index == spr_SMB_shell_empty_spiny))))
        {
            with (other.id)
                event_user(0)
        }
        else
        {
            with (other.id)
                event_user(1)
            scr_musicalscale(other.id, id, 1)
            instance_create(other.x, (other.y + 22), obj_spinthump)
            event_user(0)
        }
    }
    else if (other.bbox_bottom < ((bbox_top - v_speed) + altura))
    {
        if ((stomp != 3) && ((stomp != 5) && ((other.stompstyle == 1) || (global.yoshi == 1))))
        {
            if ((stomp == 0) || (stomp == 4))
            {
                if ((object_index == obj_bobomb) || (object_index == obj_bobomb_ready))
                {
                    with (other.id)
                        event_user(1)
                    audio_play_sound(scr_snd_stomp(), 0, false)
                    instance_create(other.x, (other.y + 22), obj_spinthump)
                    with (instance_create((x - 8), y, obj_bobomb_hold))
                    {
                        if ((obj_mario.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
                        {
                            hspeed = 4.2
                            direct = 1
                        }
                        else if ((obj_mario.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
                        {
                            hspeed = -4.2
                            direct = -1
                        }
                        else
                        {
                            hspeed = 4.2
                            direct = 1
                        }
                    }
                    instance_destroy()
                }
                else if (object_index == obj_charginchuck)
                {
                    with (other.id)
                        event_user(1)
                    audio_play_sound(scr_snd_stomp(), 0, false)
                    instance_create(other.x, (other.y + 22), obj_spinthump)
                    event_user(1)
                }
                else if ((object_index == obj_shell_held) && ((sprite_index == spr_shell_spiny_empty) || ((sprite_index == spr_SMB3_shell_spiny_empty) || (sprite_index == spr_SMB_shell_empty_spiny))))
                {
                    with (other.id)
                        event_user(1)
                    audio_play_sound(scr_snd_stomp(), 0, false)
                    instance_create(other.x, (other.y + 22), obj_spinthump)
                }
                else if ((object_index == obj_cannonball) || (object_index == obj_cannonball_red))
                {
                    with (other.id)
                        event_user(1)
                    audio_play_sound(scr_snd_stomp(), 0, false)
                    instance_create(other.x, (other.y + 22), obj_spinthump)
                    event_user(1)
                }
                else
                {
                    if ((object_index == obj_galoomba) || ((object_index == obj_galoomba2) || ((object_index == obj_koopa) || ((object_index == obj_koopa_red) || ((object_index == obj_beachkoopa) || ((object_index == obj_beachkoopa_red) || (object_index == obj_shell_held)))))))
                    {
                        if (key == 1)
                        {
                            with (instance_create((x - 8), (y - 8), obj_key_appear))
                                vspeed = -4
                        }
                    }
                    with (other.id)
                        event_user(1)
                    instance_create((((bbox_left + bbox_right) / 2) - 8), y, obj_spinsmoke)
                    instance_destroy()
                }
            }
            else if ((object_index == obj_boo) || ((object_index == obj_podoboo) || (object_index == obj_angrysun)))
            {
                with (other.id)
                    event_user(0)
            }
            else if ((object_index == obj_thwomp) && (global.yoshi > 0))
            {
            }
            else if ((stomp == 1) && ((object_index == obj_pokey) && ((image_index == 0) && (global.bg_level == "snow"))))
            {
                audio_play_sound(scr_snd_kick(), 0, false)
                with (other.id)
                    event_user(1)
                instance_create(other.x, (other.y + 22), obj_spinthump)
                event_user(1)
            }
            else
            {
                with (other.id)
                    event_user(1)
                audio_play_sound(scr_snd_stomp(), 0, false)
                instance_create(other.x, (other.y + 22), obj_spinthump)
            }
        }
        else if ((global.apariencia != 4) && ((stomp == 0) || ((stomp == 3) || (stomp == 5))))
        {
            if (object_index == obj_buzzybeetle)
            {
                if (object_index.wings == 0)
                    si = 1
                else
                    si = 0
            }
            else if (object_index == obj_shell_held)
            {
                if (object_index.mytopid == 0)
                    si = 1
                else
                    si = 0
            }
            else
                si = 1
            if (si == 1)
            {
                if (vspeed < 0)
                {
                    y = yprevious
                    if (other.vspeed > 0)
                        other.y = other.yprevious
                }
                with (other.id)
                    event_user(1)
                if (stomp == 0)
                    scr_musicalscale(other.id, id, 1)
                else if (stomp == 3)
                    scr_musicalscale(other.id, id, 0)
                else if (stomp == 5)
                {
                    if (global.apariencia != 2)
                    {
                        audio_stop_sound(snd_step_enemy)
                        audio_play_sound(snd_step_enemy, 0, false)
                    }
                    else
                    {
                        audio_stop_sound(snd_kick)
                        audio_play_sound(snd_kick, 0, false)
                    }
                }
                instance_create(other.x, (other.y + 22), obj_spinthump)
                if (global.yoshi == 2)
                    event_user(0)
                else if ((object_index == obj_shell_held) && ((sprite_index == spr_shell_spiny_empty) || ((sprite_index == spr_SMB3_shell_spiny_empty) || (sprite_index == spr_SMB_shell_empty_spiny))))
                {
                    with (other.id)
                        event_user(0)
                }
                else
                    event_user(1)
            }
        }
        else if ((stomp == 1) && ((object_index == obj_pokey) && ((image_index == 0) && ((global.bg_level == "snow") && (global.apariencia != 4)))))
        {
            audio_play_sound(scr_snd_kick(), 0, false)
            with (other.id)
                event_user(1)
            instance_create(other.x, (other.y + 22), obj_spinthump)
            event_user(1)
        }
    }
    else if ((bbox_bottom < ((other.bbox_top - other.vspeed) + 3)) && ((vspeed > 0) && (obj_mario.helmet == 1)))
    {
    }
    else if (((object_index == obj_thwomp) && ((global.yoshi > 0) && ((other.y < (y - 45)) && (other.y > (y - 48))))) || ((object_index == obj_thwomp) && ((other.invincible == 1) && ((!instance_exists(obj_invincibility)) && ((other.y < (y - 45)) && (other.y > (y - 48)))))))
    {
    }
    else if ((object_index == obj_shell_held) && ((mytopid != 0) && ((mytopid != 1) && ((other.y < (y - 29)) && (other.y > (y - 32))))))
    {
    }
    else if ((global.apariencia == 4) && ((other.y < (y - 29)) && (other.y > (y - 32))))
    {
    }
    else
    {
        with (other.id)
            event_user(0)
    }
}


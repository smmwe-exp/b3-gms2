if (held == 1)
{
    swimming = 0
    vspeed = 0
    if instance_exists(obj_mario)
    {
        if ((obj_mario.stompstyle == 1) && (obj_mario.holding == 2))
        {
            if (alarm[0] == -1)
                alarm[0] = 1
            if (global.powerup == 0)
                y = (obj_mario.y + 12)
            else
                y = (obj_mario.y + 12)
        }
        else if ((obj_mario.airspin == 1) && (obj_mario.holding == 2))
        {
            if (alarm[0] == -1)
                alarm[0] = 1
            if (global.powerup == 0)
                y = (obj_mario.y + 12)
            else
                y = (obj_mario.y + 12)
        }
        else
        {
            if (((global.bg_level == "underwater") || (((global.bg_level == "castle") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((y >= (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))) && (global.apariencia != 0))
            {
                obj_mario.vspeed = -1
                if (keyboard_check(global.abajo) && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_bumper, 1, 0)))
                {
                    obj_mario.vspeed = 0.5
                    if (vspeed > 0.5)
                        vspeed = 0.5
                }
            }
            if (global.apariencia == 3)
            {
                depth = -10
                x = ((obj_mario.x - 8) + (10 * obj_mario.direct))
            }
            else if (obj_mario.turning == 1)
            {
                depth = -10
                x = (obj_mario.x - 8)
            }
            else
            {
                depth = -7
                x = ((obj_mario.x - 8) + (11 * obj_mario.direct))
            }
            shake = 0
            alarm[0] = -1
            if (global.powerup == 0)
            {
                if (global.apariencia == 3)
                    y = (obj_mario.y + 12)
                else
                    y = (obj_mario.y + 15)
            }
            else
                y = (obj_mario.y + 12)
            if (keyboard_check(global.abajo) && ((obj_mario.gravity == 0) && ((sprite_index == spr_SMB_shell_drybones) || ((sprite_index == spr_SMB3_shell_drybones) || (sprite_index == spr_shell_drybones)))))
            {
                event_user(1)
                obj_mario.isduckhold = 0
            }
            else if (keyboard_check(global.abajo) && ((obj_mario.gravity == 0) && ((obj_mario.helmet == 0) && ((sprite_index == spr_shell_buzzy_empty) || ((sprite_index == spr_SMB3_shell_empty) || (sprite_index == spr_SMB3_shell_empty_night))))))
            {
                audio_play_sound(snd_helmet_add, 0, false)
                obj_mario.helmet = 1
                instance_create(obj_mario.x, (obj_mario.y + 15), obj_helmet)
                obj_mario.isduckhold = 0
                instance_destroy()
            }
            else if (keyboard_check(global.abajo) && ((obj_mario.gravity == 0) && ((obj_mario.helmet == 0) && ((sprite_index == spr_SMB_shell_empty_spiny) || ((sprite_index == spr_SMB3_shell_spiny_empty) || (sprite_index == spr_shell_spiny_empty))))))
            {
                audio_play_sound(snd_helmet_spiny_add, 0, false)
                obj_mario.helmet = 1
                instance_create(obj_mario.x, (obj_mario.y + 15), obj_helmet_spiny)
                with (instance_create((obj_mario.x - 4), (obj_mario.y + 14), obj_smoke))
                    sprite_index = spr_sparkles_helmet
                obj_mario.isduckhold = 0
                instance_destroy()
            }
            else if (keyboard_check(global.abajo) && ((obj_mario.vspeed == 0) && (global.apariencia == 2)))
                y = (obj_mario.y + 16)
        }
        if keyboard_check(global.lanzar_agarrar)
        {
            if ((keyboard_check(global.abajo) && ((obj_mario.gravity == 0) && ((obj_mario.stompstyle == 0) && ((sprite_index == spr_shell_buzzy_empty) || ((sprite_index == spr_SMB3_shell_empty) || (sprite_index == spr_SMB3_shell_empty_night)))))) || (keyboard_check(global.abajo) && ((obj_mario.gravity == 0) && ((obj_mario.stompstyle == 0) && ((sprite_index == spr_SMB_shell_empty_spiny) || ((sprite_index == spr_SMB3_shell_spiny_empty) || (sprite_index == spr_shell_spiny_empty)))))))
                obj_mario.holding = 0
            else
                obj_mario.holding = 2
            if (obj_mario.stompstyle == 0)
                direct = obj_mario.direct
            else
                direct = 1
        }
        else if ((obj_mario.disablecontrols == 0) && (global.key_br == 0))
        {
            obj_mario.holding = 0
            y--
            held = 0
            depth = 0
            shake = 0
            alarm[0] = -1
            event_user(2)
        }
        visible = 1
    }
    else if instance_exists(obj_warpmario)
    {
        x = ((obj_warpmario.x - 8) + (10 * obj_warpmario.direct))
        if (global.powerup == 0)
            y = (obj_warpmario.y + 15)
        else
            y = (obj_warpmario.y + 12)
        if keyboard_check(global.lanzar_agarrar)
        {
            obj_warpmario.holding = 2
            direct = obj_warpmario.direct
        }
        visible = 1
    }
    else if instance_exists(obj_doormario)
    {
        obj_doormario.myitem = sprite_index
        x = ((obj_doormario.x - 8) + (11 * obj_doormario.direct))
        if (global.powerup == 0)
            y = (obj_doormario.y + 15)
        else
            y = (obj_doormario.y + 12)
        obj_doormario.holding = 2
        visible = 0
    }
    else
        held = 0
}


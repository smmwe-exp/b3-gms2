if (invincible == 0)
{
    if (global.yoshi > 0)
    {
        if (global.yoshi == 1)
        {
            event_user(6)
            if instance_exists(obj_yoshi_red)
            {
                with (instance_create(obj_yoshi_red.x, obj_yoshi_red.y, obj_yoshi_runaway))
                {
                    color = 1
                    if (obj_yoshi_red.mouthholder != -4)
                    {
                        mouthholder = obj_yoshi_red.mouthholder
                        mouthsprite = obj_yoshi_red.mouthsprite
                    }
                }
                with (obj_yoshi_red)
                    instance_destroy()
                vspeed = -3.5
                hspeed = 0
            }
            else if instance_exists(obj_yoshi2)
            {
                with (instance_create(obj_yoshi2.x, obj_yoshi2.y, obj_yoshi_runaway))
                {
                    if (obj_yoshi2.mouthholder != -4)
                    {
                        mouthholder = obj_yoshi2.mouthholder
                        mouthsprite = obj_yoshi2.mouthsprite
                    }
                }
                with (obj_yoshi2)
                    instance_destroy()
                vspeed = -3.5
                hspeed = 0
            }
        }
        else if (global.yoshi == 2)
        {
            event_user(6)
            with (obj_kuriboshoe)
                event_user(5)
        }
        global.yoshi = 0
        holding = 0
        visible = 1
        if ((global.condiciones == 1) && (global.condiciones_count == 0))
        {
            if (global.condiciones_clear == 1)
            {
                global.condiciones_clear = 0
                if instance_exists(obj_alert_condicion)
                {
                    with (obj_alert_condicion)
                        instance_destroy()
                }
                with (instance_create((__view_get( e__VW.XView, 0 ) + 54), (__view_get( e__VW.YView, 0 ) + 98), obj_alert_condicion))
                {
                    sprite_index = spr_conidiones_alert_acciones2
                    image_index = 1
                }
            }
        }
    }
    else if (modo_vuelo == 0)
    {
        if (helmet == 0)
        {
            if (global.powerup == 0)
            {
                visible = 0
                instance_create(x, y, obj_deadmario)
                instance_destroy()
            }
            else if (global.powerup == 1)
            {
                audio_play_sound(scr_snd_powerdown(), 0, false)
                if instance_exists(obj_mario)
                {
                    with (instance_create(0, 0, obj_mario_transform2))
                    {
                        c_powerup = 1
                        small = 2
                        powerdown = 1
                    }
                }
            }
            else if ((global.powerup == 2) || ((global.powerup == -50) || ((global.powerup == -77) || ((global.powerup == -29) || ((global.powerup == -78) || (global.powerup == -80))))))
            {
                if (global.powerup == -50)
                {
                    if ((!audio_is_playing(scr_switchsong())) && (!audio_is_playing(scr_snd_starman())))
                        audio_stop_sound(obj_levelmanager.levelmusic)
                    with (obj_levelmanager)
                    {
                        levelmusic = levelmusic_temp
                        levelmusic_temp = 0
                    }
                    if ((!audio_is_playing(scr_switchsong())) && (!audio_is_playing(scr_snd_starman())))
                        audio_play_sound(obj_levelmanager.levelmusic, 1, true)
                }
                audio_play_sound(scr_snd_powerdown(), 0, false)
                if instance_exists(obj_mario)
                {
                    if instance_exists(obj_mario)
                    {
                        with (instance_create(0, 0, obj_mario_transform2))
                        {
                            c_powerup = 1
                            if (global.apariencia == 0)
                                sprite_powerup = 529
                            else if (global.apariencia == 1)
                                sprite_powerup = 1247
                            else if (global.apariencia == 2)
                                sprite_powerup = 2152
                            else if (global.apariencia == 3)
                                sprite_powerup = 3230
                            else if (global.apariencia == 4)
                                sprite_powerup = 3673
                            powerdown = 1
                        }
                    }
                }
            }
            else if (global.powerup == 3)
            {
                audio_play_sound(scr_snd_powerdown(), 0, false)
                global.powerup = 1
                if instance_exists(obj_cap_mario)
                {
                    with (obj_cap_mario)
                    {
                        cap_invisible = 1
                        visible = 0
                    }
                }
                if instance_exists(obj_mario)
                {
                    with (instance_create(0, 0, obj_mario_transform2))
                    {
                        cap = 2
                        powerdown = 1
                    }
                }
            }
            else if (global.powerup == -39)
            {
                audio_play_sound(scr_snd_powerdown(), 0, false)
                if instance_exists(obj_mario)
                {
                    if instance_exists(obj_mario)
                    {
                        with (instance_create(0, 0, obj_mario_transform2))
                        {
                            c_powerup = 1
                            sprite_powerup = 1247
                            powerdown = 1
                        }
                    }
                }
            }
        }
        else
        {
            event_user(6)
            helmet = 0
            with (obj_helmet)
                event_user(5)
            if ((global.condiciones == 1) && (global.condiciones_count == 0))
            {
                if (global.condiciones_clear == 1)
                {
                    global.condiciones_clear = 0
                    if instance_exists(obj_alert_condicion)
                    {
                        with (obj_alert_condicion)
                            instance_destroy()
                    }
                    with (instance_create((__view_get( e__VW.XView, 0 ) + 54), (__view_get( e__VW.YView, 0 ) + 98), obj_alert_condicion))
                    {
                        sprite_index = spr_conidiones_alert_acciones2
                        image_index = 1
                    }
                }
            }
        }
    }
    else
    {
        event_user(6)
        audio_stop_sound(snd_mariocap_rise)
        modo_vuelo = 0
        stompstyle = 1
        audio_play_sound(snd_mariocap_out, 0, false)
    }
}


var shell_c;
if (explode == 1)
{
    if (global.apariencia < 2)
    {
        audio_stop_sound(snd_SMB3_pow)
        audio_play_sound(snd_SMB3_pow, 0, false)
    }
    else if (global.apariencia == 4)
    {
        audio_stop_sound(snd_SMB2_pow)
        audio_play_sound(snd_SMB2_pow, 0, false)
    }
    else
    {
        audio_stop_sound(snd_pow)
        audio_play_sound(snd_pow, 0, false)
    }
    with (instance_create(x, y, obj_spinthump))
    {
        if (global.apariencia == 0)
            sprite_index = spr_SMB_pow_explode
        else if (global.apariencia == 1)
            sprite_index = spr_SMB3_pow_explode
        else if (global.apariencia == 2)
            sprite_index = spr_pow_explode
        else if (global.apariencia == 3)
            sprite_index = spr_pow_explode
        else if (global.apariencia == 4)
        {
            if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
                sprite_index = spr_SMB2_pow_explode_night
            else
                sprite_index = spr_SMB2_pow_explode
        }
        image_speed = 0.6
    }
    if instance_exists(obj_enemyparent)
    {
        with (obj_enemyparent)
        {
            if ((vspeed == 0) && ((hardness < 99) && ((object_index != obj_grinder) && (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && ((!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)) && ((x < (__view_get( e__VW.XView, 0 ) + 404)) && ((x > (__view_get( e__VW.XView, 0 ) - 20)) && ((y > (__view_get( e__VW.YView, 0 ) - 20)) && (y < (__view_get( e__VW.YView, 0 ) + 236))))))))))
            {
                dead_h = 1
                event_user(0)
            }
            else if (((object_index == obj_buzzybeetle) || (object_index == obj_spiny)) && ((inup == 1) && ((x < (__view_get( e__VW.XView, 0 ) + 404)) && ((x > (__view_get( e__VW.XView, 0 ) - 20)) && ((y > (__view_get( e__VW.YView, 0 ) - 20)) && (y < (__view_get( e__VW.YView, 0 ) + 236)))))))
            {
                shell_c = instance_create((x - 8), y, obj_shell)
                if (sprite_index == spr_buzzybeetle)
                    shell_c.sprite_index = spr_shell_buzzy_down
                else if (sprite_index == spr_SMB3_buzzybeetle)
                    shell_c.sprite_index = spr_SMB3_shell_buzzy_down
                else if (sprite_index == spr_SMB3_buzzybeetle_night)
                    shell_c.sprite_index = spr_SMB3_shell_buzzy_down_night
                else if (sprite_index == spr_spiny)
                    shell_c.sprite_index = spr_spiny_dead
                else if (sprite_index == spr_SMB3_spiny)
                    shell_c.sprite_index = spr_SMB3_spiny_dead
                instance_destroy()
            }
        }
    }
    if instance_exists(obj_muncher)
    {
        with (obj_muncher)
        {
            if ((vspeed == 0) && (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && ((!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)) && ((x < (__view_get( e__VW.XView, 0 ) + 404)) && ((x > (__view_get( e__VW.XView, 0 ) - 20)) && ((y > (__view_get( e__VW.YView, 0 ) - 20)) && (y < (__view_get( e__VW.YView, 0 ) + 236))))))))
            {
                dead_h = 1
                event_user(0)
            }
        }
    }
    if instance_exists(obj_muncher_big)
    {
        with (obj_muncher_big)
        {
            if ((vspeed == 0) && ((x < (__view_get( e__VW.XView, 0 ) + 404)) && ((x > (__view_get( e__VW.XView, 0 ) - 20)) && ((y > (__view_get( e__VW.YView, 0 ) - 20)) && (y < (__view_get( e__VW.YView, 0 ) + 236))))))
            {
                dead_h = 1
                event_user(0)
            }
        }
    }
    if instance_exists(obj_shell)
    {
        with (obj_shell)
        {
            if ((vspeed == 0) && ((nomatar == 0) && ((x < (__view_get( e__VW.XView, 0 ) + 404)) && ((x > (__view_get( e__VW.XView, 0 ) - 20)) && ((y > (__view_get( e__VW.YView, 0 ) - 20)) && (y < (__view_get( e__VW.YView, 0 ) + 236)))))))
            {
                dead_h = 1
                event_user(0)
            }
        }
    }
    if instance_exists(obj_galoomba_hold)
    {
        with (obj_galoomba_hold)
        {
            if ((vspeed == 0) && ((x < (__view_get( e__VW.XView, 0 ) + 404)) && ((x > (__view_get( e__VW.XView, 0 ) - 20)) && ((y > (__view_get( e__VW.YView, 0 ) - 20)) && (y < (__view_get( e__VW.YView, 0 ) + 236))))))
            {
                dead_h = 1
                event_user(0)
            }
        }
    }
    if instance_exists(obj_bossparent)
    {
        with (obj_bossparent)
        {
            if ((vspeed == 0) && (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && ((!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)) && ((x < (__view_get( e__VW.XView, 0 ) + 404)) && ((x > (__view_get( e__VW.XView, 0 ) - 20)) && ((y > (__view_get( e__VW.YView, 0 ) - 20)) && (y < (__view_get( e__VW.YView, 0 ) + 236))))))))
            {
                dead_h = 1
                event_user(0)
            }
        }
    }
    if instance_exists(obj_coin)
    {
        with (obj_coin)
        {
            if ((x < (__view_get( e__VW.XView, 0 ) + 404)) && ((x > (__view_get( e__VW.XView, 0 ) - 20)) && ((y > (__view_get( e__VW.YView, 0 ) - 20)) && (y < (__view_get( e__VW.YView, 0 ) + 236)))))
            {
                with (instance_create(x, y, obj_coin_pow))
                    hspeed = random_range(1, -1)
                instance_destroy()
            }
        }
    }
    instance_destroy()
}


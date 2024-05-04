var solidtop, block_pow, b_drybones, thwomp_block, munchers_block, enemigos_solid, pinchos_block, conveyor, pow_col1, pow_col2, pswitch_col1, pswitch_col2, col_muncher_type1, col_muncher_type2, col_cannon1, col_cannon2, col_pinchos_type1, col_pinchos_type2, onoff, onoff_blue, pblock, pblock_2, col_one_right, col_one_left, blocks_pswitch, b_pswitch2, b_block_pow, one_2, billbase, cannon, colthwomps, col_one_bottom, block_col, block_col_ice, block_col_rock, block_icecoin;
if (flashAlpha > 0)
    flashAlpha -= 0.03
if (((global.modo_noche == 1) && (global.bg_level == "snow")) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_ice, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_icecoin, 0, 0)))
    snow = 1
else
    snow = 0
if (enable_gravity == 1)
{
    if (vspeed > 0)
    {
        solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
        if (solidtop && ((bbox_bottom < (solidtop.yprevious + 5)) && (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (solidtop.y - 1), obj_solid, 1, 0))))
        {
            if (((sprite_index == spr_mario_cap_fly_decender) || ((sprite_index == spr_luigi_cap_fly_decender) || ((sprite_index == spr_toad_cap_fly_decender) || (sprite_index == spr_toadette_cap_fly_decender)))) && (image_index == 2))
            {
                audio_play_sound(snd_thwomp_original, 0, false)
                if instance_exists(obj_levelmanager)
                {
                    with (obj_levelmanager)
                        alarm[11] = 1
                }
                if instance_exists(obj_enemyparent)
                {
                    with (obj_enemyparent)
                    {
                        if ((vspeed == 0) && ((hardness < 99) && ((object_index != obj_grinder) && ((x < (__view_get( e__VW.XView, 0 ) + 404)) && ((x > (__view_get( e__VW.XView, 0 ) - 20)) && ((y > (__view_get( e__VW.YView, 0 ) - 20)) && (y < (__view_get( e__VW.YView, 0 ) + 236))))))))
                        {
                            dead_h = 1
                            event_user(0)
                        }
                    }
                }
                if instance_exists(obj_boomboom)
                {
                    with (obj_boomboom)
                    {
                        if ((vspeed == 0) && ((x < (__view_get( e__VW.XView, 0 ) + 404)) && ((x > (__view_get( e__VW.XView, 0 ) - 20)) && ((y > (__view_get( e__VW.YView, 0 ) - 20)) && (y < (__view_get( e__VW.YView, 0 ) + 236))))))
                        {
                            dead_h = 1
                            event_user(0)
                        }
                    }
                }
                if instance_exists(obj_muncher)
                {
                    with (obj_muncher)
                    {
                        if ((vspeed == 0) && ((x < (__view_get( e__VW.XView, 0 ) + 404)) && ((x > (__view_get( e__VW.XView, 0 ) - 20)) && ((y > (__view_get( e__VW.YView, 0 ) - 20)) && (y < (__view_get( e__VW.YView, 0 ) + 236))))))
                        {
                            dead_h = 1
                            event_user(0)
                        }
                    }
                }
            }
            if (collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_block_rock, 0, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_block_ice, 0, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_blockparent, 0, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_icecoin, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_block_pow_hold, 0, 0)))))
            {
                if ((jumpnow != 0) && ((can_break_block == 0) && (vspeed > 0)))
                    can_break_block = 1
                if (can_break_block == 2)
                    can_break_block = 0
            }
            else if (can_break_block == 2)
                can_break_block = 0
            modo_vuelo = 0
            y = (solidtop.y - 32)
            vspeed = 0
            gravity = 0
            stompstyle = 0
            airspin = 0
            airspin_count = 0
            jumpnow = 0
            hitpoint = 0
            canfly = 0
            powerupfly = 0
            walljump = 0
            jump_type = 0
            squirrelpropel = 0
            doublejump = 0
            if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0) && ((invincible == 0) && (global.yoshi == 0)))
                event_user(0)
        }
        block_pow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0)
        if (block_pow && (bbox_bottom < (block_pow.yprevious + 5)))
        {
            y = (block_pow.y - 32)
            modo_vuelo = 0
            vspeed = 0
            gravity = 0
            stompstyle = 0
            airspin = 0
            airspin_count = 0
            jumpnow = 0
            hitpoint = 0
            canfly = 0
            powerupfly = 0
            walljump = 0
            jump_type = 0
            squirrelpropel = 0
            doublejump = 0
        }
        b_drybones = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_lava_water_drybones, 0, 0)
        if (b_drybones && ((bbox_bottom < (b_drybones.yprevious + 5)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (b_drybones.y - 1), obj_solid, 1, 0)) && instance_exists(obj_kuribo_drybones))))
        {
            y = (b_drybones.y - 32)
            modo_vuelo = 0
            vspeed = 0
            gravity = 0
            stompstyle = 0
            airspin = 0
            airspin_count = 0
            jumpnow = 0
            hitpoint = 0
            canfly = 0
            powerupfly = 0
            walljump = 0
            jump_type = 0
            squirrelpropel = 0
            doublejump = 0
        }
        thwomp_block = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp, 0, 0)
        if ((thwomp_block && ((bbox_bottom < (thwomp_block.yprevious + 5)) && (global.yoshi > 0))) || (thwomp_block && ((bbox_bottom < (thwomp_block.yprevious + 5)) && ((stompstyle == 0) && ((invincible == 1) && (!instance_exists(obj_invincibility)))))))
        {
            y = ceil(((thwomp_block.bbox_top - 32) - thwomp_block.vspeed))
            modo_vuelo = 0
            vspeed = 0
            gravity = 0
            airspin = 0
            airspin_count = 0
            jumpnow = 0
            hitpoint = 0
            canfly = 0
            powerupfly = 0
            walljump = 0
            jump_type = 0
            squirrelpropel = 0
            doublejump = 0
        }
        munchers_block = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_muncher, 0, 0)
        if ((munchers_block && ((bbox_bottom < (munchers_block.yprevious + 5)) && (global.yoshi > 0))) || (munchers_block && ((bbox_bottom < (munchers_block.yprevious + 5)) && (invincible == 1))))
        {
            y = ceil(((munchers_block.bbox_top - 32) - munchers_block.vspeed))
            modo_vuelo = 0
            vspeed = 0
            gravity = 0
            jumpnow = 0
            airspin = 0
            airspin_count = 0
            hitpoint = 0
            canfly = 0
            walljump = 0
            jump_type = 0
        }
        enemigos_solid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_enemyparent, 0, 0)
        if (enemigos_solid && ((global.apariencia == 4) && ((bbox_bottom < (enemigos_solid.yprevious + 5)) && ((enemigos_solid.stomp != 1) && ((enemigos_solid.stomp != 2) && (enemigos_solid.stomp != 5))))))
        {
            y = ceil(((enemigos_solid.bbox_top - 32) - enemigos_solid.vspeed))
            vspeed = 0
            gravity = 0
            jumpnow = 0
            hitpoint = 0
        }
        pinchos_block = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0)
        if ((pinchos_block && ((bbox_bottom < (pinchos_block.yprevious + 5)) && (global.yoshi > 0))) || ((pinchos_block && ((bbox_bottom < (pinchos_block.yprevious + 5)) && (invincible == 1))) || (pinchos_block && ((bbox_bottom < (pinchos_block.yprevious + 5)) && instance_exists(obj_invincibility)))))
        {
            y = ceil((pinchos_block.bbox_top - 32))
            modo_vuelo = 0
            vspeed = 0
            gravity = 0
            jumpnow = 0
            hitpoint = 0
            canfly = 0
            powerupfly = 0
            walljump = 0
            jump_type = 0
        }
    }
    if (stuntime > 0)
    {
        if (stuntime == 1)
        {
            stuntime = 0
            shake = 0
            disablecontrols = 0
            if instance_exists(obj_shake_mario)
            {
                with (obj_shake_mario)
                    instance_destroy()
            }
        }
        stuntime--
        shake = (-shake)
    }
    conveyor = collision_rectangle((bbox_left - 2), bbox_top, (bbox_right + 2), (bbox_bottom + 1), obj_cinta_parent, 0, 0)
    if (conveyor && (conveyor.image_speed != 0))
    {
        if (conveyor.image_speed > 0)
        {
            if ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_pinchos, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_muncher, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_cannon, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 1, 0)) && (!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_onewaygate_left, 1, 0)))))))
                x -= conveyor.image_speed
        }
        else if (conveyor.image_speed < 0)
        {
            if ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_cannon, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)) && (!collision_rectangle((bbox_left - 2), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0)))))))
                x -= conveyor.image_speed
        }
    }
    if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 4), obj_slopeparent, 1, 0) && ((!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_slopeparent, 1, 0)) && (state == 1)))
        y += 4
    if (collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, bbox_bottom, obj_slopeparent, 1, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 8), bbox_right, (bbox_bottom - 8), obj_slopeparent, 1, 0)))
    {
        if (vspeed > 0)
        {
            vspeed = 0
            gravity = 0
            if (jumpnow == 2)
                jumpnow = 0
            hitpoint = 0
            powerupfly = 0
            walljump = 0
            jump_type = 0
        }
        if (vspeed > -0.85)
        {
            while collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, bbox_bottom, obj_slopeparent, 1, 0)
                y--
        }
    }
    if (isswim == 0)
    {
        if (state == 3)
            event_user(4)
        else if (state == 4)
            event_user(5)
        else
            event_user(2)
    }
    else if (state == 3)
        event_user(4)
    else
        event_user(3)
    pow_col1 = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_block_pow_hold, 1, 0)
    pow_col2 = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_block_pow_hold, 1, 0)
    if (pow_col1 && ((pow_col1.held == 0) && ((pow_col1.inmune == 0) && (scr_canhold() == 0))))
    {
        if (hspeed > 0)
            hspeed = 0
        while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_block_pow_hold, 1, 0) && ((!collision_point(x, (bbox_top + 4), obj_block_pow_hold, 0, 0)) && (state < 2)))
            x--
    }
    else if (pow_col2 && ((pow_col2.held == 0) && ((pow_col2.inmune == 0) && (scr_canhold() == 0))))
    {
        if (hspeed < 0)
            hspeed = 0
        while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_block_pow_hold, 1, 0) && ((!collision_point(x, (bbox_top + 4), obj_block_pow_hold, 0, 0)) && (state < 2)))
            x++
    }
    pswitch_col1 = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_pswitch, 1, 0)
    pswitch_col2 = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_pswitch, 1, 0)
    if (pswitch_col1 && ((pswitch_col1.held == 0) && ((pswitch_col1.inmune == 0) && ((pswitch_col1.inup == 1) || ((pswitch_col1.inup == 0) && (scr_canhold() == 0))))))
    {
        if (hspeed > 0)
            hspeed = 0
        while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_pswitch, 1, 0) && ((!collision_point(x, (bbox_top + 4), obj_pswitch, 0, 0)) && (state < 2)))
            x--
    }
    else if (pswitch_col2 && ((pswitch_col2.held == 0) && ((pswitch_col2.inmune == 0) && ((pswitch_col2.inup == 1) || ((pswitch_col2.inup == 0) && (scr_canhold() == 0))))))
    {
        if (hspeed < 0)
            hspeed = 0
        while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_pswitch, 1, 0) && ((!collision_point(x, (bbox_top + 4), obj_pswitch, 0, 0)) && (state < 2)))
            x++
    }
    col_muncher_type1 = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_muncher, 1, 0)
    col_muncher_type2 = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_muncher, 1, 0)
    if col_muncher_type1
    {
        if (hspeed > 0)
            hspeed = 0
        while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_muncher, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_muncher, 0, 0)))
            x--
        if (invincible == 0)
            event_user(0)
    }
    else if col_muncher_type2
    {
        if (hspeed < 0)
            hspeed = 0
        while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_muncher, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_muncher, 0, 0)))
            x++
        if (invincible == 0)
            event_user(0)
    }
    col_cannon1 = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_cannon, 1, 0)
    col_cannon2 = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_cannon, 1, 0)
    if col_cannon1
    {
        if (hspeed > 0)
            hspeed = 0
        while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_cannon, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_cannon, 0, 0)))
            x--
    }
    else if col_cannon2
    {
        if (hspeed < 0)
            hspeed = 0
        while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_cannon, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_cannon, 0, 0)))
            x++
    }
    col_pinchos_type1 = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_pinchos, 1, 0)
    col_pinchos_type2 = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_pinchos, 1, 0)
    if ((hspeed > 0) && col_pinchos_type1)
    {
        hspeed = 0
        while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_pinchos, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_pinchos, 0, 0)))
            x--
        if (invincible == 0)
            event_user(0)
    }
    else if ((hspeed < 0) && col_pinchos_type2)
    {
        hspeed = 0
        while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_pinchos, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_pinchos, 0, 0)))
            x++
        if (invincible == 0)
            event_user(0)
    }
    if collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_bullebill_base, 1, 0)
    {
        if (hspeed > 0)
            hspeed = 0
        while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bullebill_base, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_bullebill_base, 0, 0)))
            x--
    }
    else if collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_bullebill_base, 1, 0)
    {
        if (hspeed < 0)
            hspeed = 0
        while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_bullebill_base, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_bullebill_base, 0, 0)))
            x++
    }
    if collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 1, 0)
    {
        if (hspeed > 0)
            hspeed = 0
        onoff = collision_rectangle((bbox_right - 3), (bbox_top + 3), (bbox_left + 3), (bbox_bottom - 3), obj_onoffplatform, 1, 0)
        onoff_blue = collision_rectangle((bbox_right - 3), (bbox_top + 3), (bbox_left + 3), (bbox_bottom - 3), obj_onoffplatform_blue, 1, 0)
        pblock = collision_rectangle((bbox_right - 3), (bbox_top + 3), (bbox_left + 3), (bbox_bottom - 3), obj_pblock, 1, 0)
        pblock_2 = collision_rectangle((bbox_right - 3), (bbox_top + 3), (bbox_left + 3), (bbox_bottom - 3), obj_anti_pblock, 1, 0)
        if ((onoff && (onoff.image_index == 1)) || ((onoff_blue && (onoff_blue.image_index == 1)) || ((pblock && (pblock.image_index == 0)) || (pblock_2 && (pblock_2.image_index == 0)))))
        {
            speed = 0
            gravity = 0
            isduck = 1
            jumpnow = 0
        }
        else
        {
            while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_solid, 0, 0)))
                x--
        }
        if (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_pinchos, 1, 0) && (invincible == 0))
            event_user(0)
    }
    else if collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 1, 0)
    {
        if (hspeed < 0)
            hspeed = 0
        onoff = collision_rectangle((bbox_right - 3), (bbox_top + 3), (bbox_left + 3), (bbox_bottom - 3), obj_onoffplatform, 1, 0)
        onoff_blue = collision_rectangle((bbox_right - 3), (bbox_top + 3), (bbox_left + 3), (bbox_bottom - 3), obj_onoffplatform_blue, 1, 0)
        pblock = collision_rectangle((bbox_right - 3), (bbox_top + 3), (bbox_left + 3), (bbox_bottom - 3), obj_pblock, 1, 0)
        pblock_2 = collision_rectangle((bbox_right - 3), (bbox_top + 3), (bbox_left + 3), (bbox_bottom - 3), obj_anti_pblock, 1, 0)
        if ((onoff && (onoff.image_index == 1)) || ((onoff_blue && (onoff_blue.image_index == 1)) || ((pblock && (pblock.image_index == 0)) || (pblock_2 && (pblock_2.image_index == 0)))))
        {
            speed = 0
            gravity = 0
            isduck = 1
            jumpnow = 0
        }
        else
        {
            while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_solid, 0, 0)))
                x++
        }
        if (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_pinchos, 1, 0) && (invincible == 0))
            event_user(0)
    }
    col_one_right = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_onewaygate_right, 1, 0)
    if col_one_right
    {
        if (hspeed < 0)
        {
            hspeed = 0
            with (col_one_right)
                rot = 1
            if (!audio_is_playing(snd_oneway))
                audio_play_sound(snd_oneway, 0, false)
        }
        while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_onewaygate_right, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_onewaygate_right, 0, 0)))
            x++
    }
    col_one_left = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_onewaygate_left, 1, 0)
    if col_one_left
    {
        if (hspeed > 0)
        {
            hspeed = 0
            with (col_one_left)
                rot = 1
            if (!audio_is_playing(snd_oneway))
                audio_play_sound(snd_oneway, 0, false)
        }
        while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_onewaygate_left, 1, 0) && (!collision_point(x, (bbox_top + 4), obj_onewaygate_left, 0, 0)))
            x--
    }
    blocks_pswitch = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_pswitch, 1, 0)
    b_pswitch2 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_pswitch, 1, 0)
    b_block_pow = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_block_pow_hold, 1, 0)
    if ((vspeed < 0) && (blocks_pswitch && ((blocks_pswitch.inup == 1) && ((bbox_top + 5) >= blocks_pswitch.bbox_bottom))))
    {
        vspeed = 0
        with (blocks_pswitch)
            event_user(6)
    }
    if ((vspeed < 0) && (b_pswitch2 && ((b_pswitch2.held == 0) && ((b_pswitch2.inmune == 0) && ((b_pswitch2.vspeed == 0) && ((bbox_top + 5) >= b_pswitch2.bbox_bottom))))))
        vspeed = 0
    if ((vspeed < 0) && (b_block_pow && ((b_block_pow.held == 0) && ((b_block_pow.inmune == 0) && ((b_block_pow.vspeed == 0) && ((bbox_top + 5) >= b_block_pow.bbox_bottom))))))
    {
        vspeed = 0
        with (b_block_pow)
        {
            explode = 1
            event_user(6)
        }
    }
    one_2 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0)
    billbase = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_bullebill_base, 1, 0)
    cannon = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_cannon, 1, 0)
    if (((vspeed < 0) && collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0)) || (((vspeed < 0) && (billbase && ((bbox_top + 5) >= billbase.bbox_bottom))) || (((vspeed < 0) && collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_muncher, 1, 0)) || (((vspeed < 0) && collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_pinchos, 1, 0)) || (((vspeed < 0) && (cannon && ((bbox_top + 5) >= cannon.bbox_bottom))) || ((vspeed < 0) && (one_2 && ((bbox_top + 5) >= one_2.bbox_bottom))))))))
    {
        colthwomps = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0)
        if (colthwomps && (colthwomps.vspeed < 0))
        {
            instance_create(x, y, obj_deadmario)
            instance_destroy()
        }
        if (state > 1)
        {
            while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_islope_r, 1, 0))
                y++
        }
        vspeed = 0
        col_one_bottom = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0)
        if col_one_bottom
        {
            with (col_one_bottom)
                rot = 1
            if (!audio_is_playing(snd_oneway))
                audio_play_sound(snd_oneway, 0, false)
        }
        else if (!audio_is_playing(scr_snd_bump()))
        {
            audio_stop_sound(scr_jump())
            audio_play_sound(scr_snd_bump(), 0, false)
        }
        block_col = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_blockparent, 1, 0)
        block_col_ice = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_block_ice, 1, 0)
        block_col_rock = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_block_rock, 1, 0)
        block_icecoin = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_icecoin, 1, 0)
        if ((instance_exists(obj_helmet_spiny) || (global.powerup == -77)) && (block_col_ice && (block_col_ice.vspeed == 0)))
        {
            with (block_col_ice)
                alarm[0] = 1
        }
        if ((instance_exists(obj_helmet_spiny) || (global.powerup == -77)) && (block_icecoin && (block_icecoin.vspeed == 0)))
        {
            with (block_icecoin)
                alarm[0] = 1
        }
        if ((instance_exists(obj_helmet_spiny) || (global.powerup == -77)) && (block_col_rock && (block_col_rock.vspeed == 0)))
        {
            with (block_col_rock)
                alarm[0] = 1
        }
        if ((instance_exists(obj_helmet_spiny) || (global.powerup == -77)) && (block_col && ((block_col.vspeed == 0) && ((block_col.object_index != obj_onoffblock) && (block_col.object_index != obj_noteblock)))))
        {
            with (block_col)
                alarm[2] = 1
        }
        if (block_col && ((block_col.vspeed == 0) && ((block_col.object_index == obj_flipblock) && ((global.apariencia != 2) && ((global.powerup != 0) || ((global.powerup == 0) && instance_exists(obj_helmet)))))))
        {
            with (block_col)
                alarm[2] = 1
        }
        else if (block_col && ((block_col.object_index == obj_onoffblock) && (block_col.ready == 0)))
        {
            with (block_col)
                event_user(1)
        }
        else if (block_col && (global.powerup != -77))
        {
            if (block_col.ready == 0)
            {
                with (block_col)
                {
                    ready = 1
                    vspeed = -2
                    if (object_index == obj_noteblock)
                        alarm[0] = 7
                    else
                        alarm[0] = 4
                    event_user(0)
                }
            }
        }
        if ((noisy == 0) && ((state < 3) && (vspeed < 0)))
        {
            jumpnow = 2
            audio_stop_sound(scr_snd_bump())
            audio_stop_sound(scr_jump())
            audio_play_sound(scr_snd_bump(), 0, false)
        }
    }
    if (state < 3)
    {
        if ((state != 2) && (disablecontrols == 0))
        {
            if (keyboard_check(global.abajo) && (((global.apariencia == 1) || ((global.apariencia == 0) || (global.apariencia == 3))) && (((holding == 0) || (holding == 3)) && (noisy == 0))))
                isduck = 1
            else if (keyboard_check(global.abajo) && ((holding == 2) && ((noisy == 0) && (global.apariencia == 2))))
            {
                isduck = 1
                isduckhold = 1
            }
            else if (keyboard_check(global.abajo) && ((holding == 1) && ((noisy == 0) && (global.apariencia == 4))))
            {
                isduck = 1
                isduckhold = 1
            }
            else if (keyboard_check(global.abajo) && (((holding == 0) || (holding == 3)) && ((noisy == 0) && ((global.apariencia == 2) || (global.apariencia == 4)))))
                isduck = 1
            else if ((!keyboard_check(global.abajo)) && ((collision_rectangle(bbox_left, (bbox_top - 16), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 16), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0)) && (holding == 3)))
            {
                isduck = 0
                isduckhold = 0
            }
            else if ((!keyboard_check(global.abajo)) && ((collision_rectangle(bbox_left, (bbox_top - 16), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 16), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0)) && (global.powerup == 0)))
            {
                isduck = 0
                isduckhold = 0
            }
            else if ((!keyboard_check(global.abajo)) && ((!collision_rectangle(bbox_left, (bbox_top - 16), bbox_right, bbox_top, obj_solid, 1, 0)) && (!collision_rectangle(bbox_left, (bbox_top - 16), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))))
            {
                isduck = 0
                isduckhold = 0
            }
            if (keyboard_check(global.arriba) && ((global.powerup != -29) && ((holding == 0) && ((noisy == 0) && (global.apariencia == 2)))))
                isup = 1
            else if (keyboard_check(global.arriba) && ((global.powerup != -29) && ((holding == 2) && ((noisy == 0) && (global.apariencia == 2)))))
                isuphold = 1
            else if (!keyboard_check(global.arriba))
            {
                isup = 0
                isuphold = 0
            }
        }
        else if ((state == 2) && (disablecontrols == 0))
        {
            if ((!keyboard_check(global.abajo)) && ((!collision_rectangle(bbox_left, (bbox_top - 16), bbox_right, bbox_top, obj_solid, 1, 0)) && ((!collision_rectangle(bbox_left, (bbox_top - 16), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0)) && (place_free(x, (y + 1)) && (vspeed > 0)))))
            {
                isduck = 0
                isduckhold = 0
            }
            else if ((isduck == 1) && ((holding == 2) && ((noisy == 0) && (global.apariencia == 2))))
                isduckhold = 1
        }
        if (keyboard_check_pressed(global.lanzar_agarrar) && (instance_exists(obj_levelmanager) && (obj_levelmanager.barrier == 0)))
            alarm[10] = 1
    }
    else
        isduck = 0
    if (((global.bg_level == "underwater") && (isswim == 0)) || (((global.bg_level == "castle") && ((global.modo_noche == 1) && (isswim == 0))) || (instance_exists(obj_lava_water) && ((global.bg_level == "forest") && ((global.modo_noche == 0) && (((y + 18) >= obj_lava_water.y) && (isswim == 0)))))))
    {
        if ((holding == 2) && (global.apariencia == 2))
            isswimhold = 1
        isswim = 1
        powerupfly = 0
        walljump = 0
        squirrelpropel = 0
        doublejump = 0
        if (collision_point(x, (y - 17), obj_lava_water, 0, 0) && (!collision_point(x, (y - 16), obj_lava_water, 0, 0)))
        {
            vspeed = 0
            if (global.apariencia != 0)
            {
                with (instance_create(x, (y + 7), obj_smoke))
                {
                    if (global.apariencia == 1)
                        sprite_index = spr_SMB3_splash
                    else if (global.apariencia == 2)
                        sprite_index = spr_splash
                    depth = -10
                }
            }
        }
        isfloating = 0
        if (floatnow == 1)
        {
            audio_stop_sound(snd_spin)
            floatnow = 0
        }
        if (state > 2)
            state = 2
    }
    if (y < -96)
        y = -96
    else if (((bbox_top - 32) > room_height) && (global.bg_level != "castle"))
    {
        if ((global.powerup == 24) && (doublejump != -1))
        {
            doublejump = -1
            vspeed = -4.5
            y -= 8
            jumpnow = 1
            audio_play_sound(snd_jump, 0, false)
            audio_play_sound(snd_stomp, 0, false)
        }
        else
        {
            with (instance_create(x, (room_height - 32), obj_deadmario))
                visible = 0
            instance_destroy()
        }
    }
    else if ((instance_exists(obj_lava_water) && (((global.bg_level == "castle") || ((global.bg_level == "forest") && (global.modo_noche == 1))) && (((y + 32) >= obj_lava_water.y) && (!instance_exists(obj_kuribo_drybones))))) || (instance_exists(obj_lava_water) && (((global.bg_level == "castle") || ((global.bg_level == "forest") && (global.modo_noche == 1))) && (((y + 32) >= (obj_lava_water.y + 12)) && instance_exists(obj_kuribo_drybones)))))
    {
        instance_create(x, y, obj_deadmario)
        instance_destroy()
    }
}


var colthwomps, col_solidtop, col_pinchos, climb1;
colthwomps = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0)
col_solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0)
col_pinchos = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0)
if (((col_solidtop && ((y + 32) < (col_solidtop.y + 8))) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) || ((colthwomps && ((colthwomps.y > y) && (global.yoshi > 0))) || ((colthwomps && ((colthwomps.y > y) && ((invincible == 1) && ((!instance_exists(obj_invincibility)) && (stompstyle == 0))))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (global.yoshi > 0)) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (invincible == 1)) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_lava_water_drybones, 0, 0) && instance_exists(obj_kuribo_drybones)) || ((col_pinchos && (global.yoshi > 0)) || ((col_pinchos && (invincible == 1)) || (col_pinchos && instance_exists(obj_invincibility)))))))))))) && (gravity == 0))
{
    if (col_solidtop && ((y != (col_solidtop.y - 32)) && (((y + 32) < (col_solidtop.y + 10)) && (((y + 32) > col_solidtop.y) && (!instance_exists(obj_mario_transform2))))))
        y = (col_solidtop.y - 32)
    if (col_pinchos && ((y != (col_pinchos.y - 32)) && (((y + 32) < (col_pinchos.y + 10)) && (((y + 32) > col_pinchos.y) && (!instance_exists(obj_mario_transform2))))))
        y = (col_pinchos.y - 32)
    if (hspeed == 0)
        state = 0
    else
        state = 1
    statedelay = 0
    if (groundpount == 1)
        groundpount = 0
    if (triple_jump != 0)
    {
        triple_count++
        if (triple_count > 6)
        {
            triple_jump = 0
            triple_count = 0
        }
    }
}
else
{
    inplatform = 0
    if (statedelay > 4)
        state = 2
    else
        statedelay++
}
if ((groundpount == 0) && (disablecontrols == 2))
    disablecontrols = 0
if (((airspin == 1) && (vspeed >= 0)) || (groundpount == 1))
{
    vspeed = 0
    gravity = 0
}
else if (groundpount == 2)
{
    if (vspeed > 10)
        vspeed = 10
}
else if (vspeed > 4)
    vspeed = 4
if (keyboard_check_pressed(global.abajo) && ((global.apariencia == 3) && ((disablecontrols == 0) && ((state == 2) && ((isduck == 0) && ((holding == 0) && ((iamkicking == 0) && ((global.yoshi == 0) && ((airspin != 1) && ((groundpount == 0) && ((walljump == 0) && (stompstyle == 0))))))))))))
{
    image_index = 0
    groundpount = 1
    airspin = 0
    hspeed = 0
    disablecontrols = 2
    audio_play_sound(snd_NSMBU_groundpound, 0, false)
}
if (keyboard_check_pressed(global.arriba) && ((global.apariencia == 3) && ((disablecontrols == 2) && ((state == 2) && ((groundpount == 2) && (stompstyle == 0))))))
{
    sprite_index = scr_NSMBU_groundpound_canceled()
    image_speed = 0.6
    image_index = 0
    groundpount = 0
    disablecontrols = 0
}
if keyboard_check(global.lanzar_agarrar)
{
    if instance_exists(obj_invincibility)
        hspeedmax = 4
    else
        hspeedmax = 3
}
else if instance_exists(obj_invincibility)
    hspeedmax = 2.3
else
    hspeedmax = 1.5
if (keyboard_check_pressed(global.saltar) && ((disablecontrols == 0) && ((jumpnow == 0) && (state < 2))))
{
    if ((pmeter >= 6) && (((instance_exists(obj_invincibility) && (abs(hspeed) > 3.5)) || ((!instance_exists(obj_invincibility)) && (abs(hspeed) > 2.5))) && ((isduck == 0) && (holding == 0))))
    {
        if (triple_jump == 3)
            triple_jump = 0
        else
            triple_jump++
        triple_count = 0
    }
    else
        triple_jump = 0
    if (triple_jump == 3)
    {
        if ((global.bg_level == "sky") && (global.modo_noche == 1))
            vspeed = -3.65
        else
            vspeed = -4.65
    }
    else if (abs(hspeed) > 2.8)
    {
        if ((global.bg_level == "sky") && (global.modo_noche == 1))
            vspeed = -3.3
        else
            vspeed = -4.3
    }
    else if ((global.bg_level == "sky") && (global.modo_noche == 1))
    {
        if (round((hspeed / 2)) == 0)
            vspeed = -2.85
        else
            vspeed = -2.95
    }
    else if (round((hspeed / 2)) == 0)
        vspeed = -3.95
    else
        vspeed = -4.05
    audio_play_sound(scr_jump(), 0, false)
    if (triple_jump == 2)
        audio_play_sound(snd_NSMBU_triplejump_0, 0, false)
    else if (triple_jump == 3)
        audio_play_sound(choose(436, 437, 438), 0, false)
    jumpnow = 1
    state = 2
}
if ((keyboard_check_pressed(global.saltar_spin) && ((disablecontrols == 0) && ((holding < 3) && ((isduck == 0) && ((jumpnow == 0) && (state < 2)))))) || (keyboard_check_pressed(global.saltar_spin) && ((disablecontrols == 0) && ((holding == 3) && ((isduck == 0) && ((global.yoshi > 0) && ((vspeed == 0) && ((jumpnow == 0) && (state < 2)))))))))
{
    triple_jump = 0
    triple_count = 0
    image_index = 0
    if (abs(hspeed) > 2.8)
    {
        if ((global.bg_level == "sky") && (global.modo_noche == 1))
            vspeed = -2.3
        else
            vspeed = -3.3
    }
    else if ((global.bg_level == "sky") && (global.modo_noche == 1))
    {
        if (round((hspeed / 2)) == 0)
            vspeed = -2.3
        else
            vspeed = -2.3
    }
    else if (round((hspeed / 2)) == 0)
        vspeed = -3.3
    else
        vspeed = -3.3
    jumpnow = 1
    state = 2
    isduck = 0
    y--
    stompstyle = 1
    audio_play_sound(scr_snd_spinjump(), 0, false)
    alarm[7] = 10
    if (global.yoshi > 0)
    {
        global.yoshi = 0
        holding = 0
        if (direct > 0)
            hspeed = -1.2
        else
            hspeed = 1.2
        if instance_exists(obj_yoshi2)
        {
            with (obj_yoshi2)
                event_user(1)
        }
    }
}
else if (keyboard_check_pressed(global.saltar_spin) && ((global.apariencia == 3) && ((disablecontrols == 0) && ((state == 2) && ((global.yoshi == 0) && ((airspin == 0) && ((walljump != 1) && ((groundpount != 1) && (stompstyle == 0)))))))))
{
    if (triple_jump == 0)
        image_index = 0
    airspin = 1
    groundpount = 0
    audio_play_sound(snd_NSMBU_airspin, 0, false)
}
if ((keyboard_check_released(global.saltar) && (jumpnow == 1)) || (keyboard_check_released(global.saltar_spin) && (jumpnow == 1)))
    jumpnow = 2
if ((isduck == 1) && (state != 2))
{
    if (snow == 1)
    {
        if (hspeed > 0)
            hspeed -= 0.01
        if (hspeed < 0)
            hspeed += 0.01
        if (abs(hspeed) < 0.01)
            hspeed = 0
    }
    else
    {
        if (hspeed > 0)
            hspeed -= 0.05
        if (hspeed < 0)
            hspeed += 0.05
        if (abs(hspeed) < 0.05)
            hspeed = 0
    }
}
else
{
    if (keyboard_check(global.derecha) && ((!keyboard_check(global.izquierda)) && (disablecontrols == 0)))
    {
        if ((holding == 2) && ((direct != 1) && ((stompstyle == 0) && (global.apariencia == 2))))
        {
            turning = 1
            alarm[11] = 7
        }
        if (hspeed < hspeedmax)
        {
            if (isslip == 1)
                hspeed += 0.04
            else if ((snow == 1) && (gravity == 0))
            {
                if (hspeed < 0)
                    hspeed += 0.01
                else
                    hspeed += 0.05
            }
            else
            {
                if (hspeed < 0)
                    hspeed += 0.075
                hspeed += 0.06
            }
        }
        if ((walljump == 0) && ((modo_vuelo == 0) && ((global.apariencia != 0) || ((global.apariencia == 0) && (state != 2)))))
            direct = 1
    }
    else if (keyboard_check(global.izquierda) && ((!keyboard_check(global.derecha)) && (disablecontrols == 0)))
    {
        if ((holding == 2) && ((direct != -1) && ((stompstyle == 0) && (global.apariencia == 2))))
        {
            turning = 1
            alarm[11] = 7
        }
        if (hspeed > (-hspeedmax))
        {
            if (isslip == 1)
                hspeed -= 0.04
            else if ((snow == 1) && (gravity == 0))
            {
                if (hspeed > 0)
                    hspeed += -0.04
                else
                    hspeed += -0.06
            }
            else
            {
                if (hspeed > 0)
                    hspeed += -0.075
                hspeed += -0.06
            }
        }
        if ((walljump == 0) && ((modo_vuelo == 0) && ((global.apariencia != 0) || ((global.apariencia == 0) && (state != 2)))))
            direct = -1
    }
    else if (state != 2)
    {
        if (isslip == 0)
        {
            if (snow == 1)
            {
                if (hspeed > 0)
                    hspeed -= 0.005
                else if (hspeed < 0)
                    hspeed += 0.005
                if (abs(hspeed) < 0.005)
                    hspeed = 0
            }
            else
            {
                if (hspeed > 0)
                    hspeed -= 0.05
                else if (hspeed < 0)
                    hspeed += 0.05
                if (abs(hspeed) < 0.05)
                    hspeed = 0
            }
        }
        else
        {
            if (hspeed > 0)
                hspeed -= 0.025
            else if (hspeed < 0)
                hspeed += 0.025
            if (abs(hspeed) < 0.025)
                hspeed = 0
        }
    }
    if ((state != 2) && (abs(hspeed) > hspeedmax))
    {
        if (hspeed > 0)
            hspeed -= 0.025
        else if (hspeed < 0)
            hspeed += 0.025
        if (abs(hspeed) < 0.025)
            hspeed = 0
    }
}
if ((state == 2) || (statedelay > 0))
{
    if ((pmeter < 6) && (triple_jump != 0))
        triple_jump = 0
    if ((vspeed > 0) && ((isduck == 0) && ((groundpount == 0) && ((walljump == 0) && ((holding == 0) && (global.yoshi == 0))))))
    {
        if (keyboard_check(global.derecha) && (direct == 1))
        {
            if (collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_solid, 0, 1) || (collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_pinchos, 0, 1) || (collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_bullebill_base, 0, 1) || (collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_cannon, 0, 1) || (collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_muncher, 0, 1) || (collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_block_pow_hold, 0, 1) || collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_onewaygate_left, 0, 1)))))))
            {
                walljump = 1
                airspin = 0
                airspin_count = 0
                jump_number = 1
                triple_jump = 0
                triple_count = 0
                audio_play_sound(snd_NSMBU_desllizarse_walljump, 1, true)
            }
            else
                walljump = 0
        }
        else if (keyboard_check(global.izquierda) && (direct == -1))
        {
            if (collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 0, 1) || (collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 0, 1) || (collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 0, 1) || (collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_cannon, 0, 1) || (collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 0, 1) || (collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 0, 1) || collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 1)))))))
            {
                walljump = 1
                airspin = 0
                airspin_count = 0
                jump_number = 1
                triple_jump = 0
                triple_count = 0
                audio_play_sound(snd_NSMBU_desllizarse_walljump, 1, true)
            }
            else
                walljump = 0
        }
        else
        {
            walljump = 0
            audio_stop_sound(snd_NSMBU_desllizarse_walljump)
        }
    }
    if (walljump == 1)
    {
        if ((state < 2) || (isswim == 1))
            walljump = 0
        if (((direct < 0) && ((!collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 0, 1)) && ((!collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_pinchos, 0, 1)) && ((!collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_bullebill_base, 0, 1)) && ((!collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_muncher, 0, 1)) && ((!collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_block_pow_hold, 0, 1)) && ((!collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_cannon, 0, 1)) && (!collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_onewaygate_right, 0, 1))))))))) || ((direct > 0) && ((!collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 1), obj_solid, 0, 1)) && ((!collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 1), obj_pinchos, 0, 1)) && ((!collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 1), obj_bullebill_base, 0, 1)) && ((!collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 1), obj_muncher, 0, 1)) && ((!collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 1), obj_block_pow_hold, 0, 1)) && ((!collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 1), obj_cannon, 0, 1)) && (!collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 1), obj_onewaygate_left, 0, 1))))))))))
            walljump = 0
        if (stompstyle == 0)
        {
            if ((global.modo_noche == 1) && (global.bg_level == "sky"))
            {
                gravity = 0.1
                if (vspeed > 1)
                    vspeed = 1
            }
            else
            {
                gravity = 0.2
                if (vspeed > 1.6)
                    vspeed = 1.6
            }
            if (polvo < 6)
                polvo++
            else
            {
                if (direct == 1)
                {
                    with (instance_create(x, y, obj_smoke))
                        image_speed = 0.8
                }
                else
                {
                    with (instance_create((x - 16), y, obj_smoke))
                        image_speed = 0.8
                }
                polvo = 0
            }
        }
        if keyboard_check_pressed(global.saltar)
        {
            if ((global.modo_noche == 1) && (global.bg_level == "sky"))
                vspeed = -2.625
            else
                vspeed = -3.625
            jumpnow = 1
            stompstyle = 0
            alarm[11] = 10
            if (direct > 0)
            {
                hspeed = -3.125
                walljump = 2
                direct = -1
                audio_play_sound(choose(439, 440), 1, false)
                with (instance_create(bbox_right, y, obj_smoke))
                {
                    sprite_index = spr_NSMBU_smoke_wall
                    direct = -1
                }
            }
            else if (direct < 0)
            {
                hspeed = 3.125
                walljump = 2
                direct = 1
                audio_play_sound(choose(439, 440), 1, false)
                with (instance_create(bbox_left, y, obj_smoke))
                {
                    sprite_index = spr_NSMBU_smoke_wall
                    direct = 1
                }
            }
        }
        else if keyboard_check_pressed(global.saltar_spin)
        {
            if ((global.modo_noche == 1) && (global.bg_level == "sky"))
                vspeed = -2.625
            else
                vspeed = -3.625
            jumpnow = 1
            stompstyle = 1
            alarm[11] = 10
            if (direct > 0)
            {
                hspeed = -3.125
                walljump = 2
                direct = -1
                audio_play_sound(snd_NSMBU_spinjump, 1, false)
                with (instance_create(bbox_right, y, obj_smoke))
                {
                    sprite_index = spr_NSMBU_smoke_wall
                    direct = -1
                }
            }
            else if (direct < 0)
            {
                hspeed = 3.125
                walljump = 2
                direct = 1
                audio_play_sound(snd_NSMBU_spinjump, 1, false)
                with (instance_create(bbox_left, y, obj_smoke))
                {
                    sprite_index = spr_NSMBU_smoke_wall
                    direct = 1
                }
            }
        }
    }
    else if ((global.modo_noche == 1) && (global.bg_level == "sky"))
    {
        gravity = 0.05
        if (groundpount == 2)
        {
            if (vspeed > 2)
                vspeed = 3
        }
        else if (vspeed > 1)
            vspeed = 1
    }
    else if ((vspeed > -1) || (jumpnow != 1))
    {
        if (groundpount == 2)
            gravity = 0.6
        else
            gravity = 0.3
        if (jumpnow == 1)
            jumpnow = 2
    }
    else if (groundpount == 2)
        gravity = 0.2
    else
        gravity = 0.1
}
climb1 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climb, 0, 0)
if (climb1 && (((((y + 19) > climb1.y) && ((climb1.object_index == obj_vine_green) && (climb1.image_index == 0))) || ((climb1.object_index != obj_vine_green) || (climb1.image_index != 0))) && ((global.yoshi == 0) && ((isduck == 0) && ((keyboard_check(global.arriba) || (keyboard_check(global.abajo) && (state == 2))) && ((holding == 0) && (disablecontrols == 0)))))))
{
    state = 3
    gravity = 0
    speed = 0
    isfloating = 0
    powerupfly = 0
    walljump = 0
    squirrelpropel = 0
    doublejump = 0
    airspin = 0
    groundpount = 0
}
if (stompstyle == 1)
{
    if (state != 2)
        stompstyle = 0
}
if ((walljump == 0) && audio_is_playing(snd_NSMBU_desllizarse_walljump))
    audio_stop_sound(snd_NSMBU_desllizarse_walljump)


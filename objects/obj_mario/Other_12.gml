var colthwomps, col_solidtop, col_pinchos, col_enemigos, enemigo, hold, nube, suelo_nieve, start_nieve, goal_nieve, climb1;
colthwomps = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0)
col_solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0)
col_pinchos = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0)
col_enemigos = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_enemyparent, 0, 0)
if (((col_solidtop && ((y + 32) < (col_solidtop.y + 8))) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) || ((colthwomps && ((colthwomps.y > y) && (global.yoshi > 0))) || ((colthwomps && ((colthwomps.y > y) && ((invincible == 1) && ((!instance_exists(obj_invincibility)) && (stompstyle == 0))))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (global.yoshi > 0)) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (invincible == 1)) || ((col_enemigos && ((global.apariencia == 4) && ((col_enemigos.stomp != 1) && ((col_enemigos.stomp != 2) && (col_enemigos.stomp != 5))))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_lava_water_drybones, 0, 0) && instance_exists(obj_kuribo_drybones)) || ((col_pinchos && (global.yoshi > 0)) || ((col_pinchos && (invincible == 1)) || (col_pinchos && instance_exists(obj_invincibility))))))))))))) && (gravity == 0))
{
    if (col_solidtop && ((y != (col_solidtop.y - 32)) && (((y + 32) < (col_solidtop.y + 10)) && (((y + 32) > col_solidtop.y) && (!instance_exists(obj_mario_transform2))))))
        y = (col_solidtop.y - 32)
    if (col_pinchos && ((y != (col_pinchos.y - 32)) && (((y + 32) < (col_pinchos.y + 10)) && (((y + 32) > col_pinchos.y) && (!instance_exists(obj_mario_transform2))))))
        y = (col_pinchos.y - 32)
    audio_stop_sound(snd_SMB_hen_jump_fall)
    s_hen = 0
    if (hspeed == 0)
        state = 0
    else
        state = 1
    statedelay = 0
    if ((instance_exists(obj_levelmanager) && ((inplatform == 0) && (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_plataforma, 0, 0) || collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_plataforma_blue, 0, 0)))) || (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_donut, 0, 0) || collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_estalactita, 0, 0)))
        inplatform = 1
}
else
{
    inplatform = 0
    if (statedelay > 4)
        state = 2
    else
        statedelay++
}
if (vspeed > 4)
    vspeed = 4
if ((global.apariencia == 4) && (state == 0))
{
    if keyboard_check(global.abajo)
    {
        if (jump_loaded < 60)
            jump_loaded++
        else
            jump_loaded = 60
    }
    else
        jump_loaded = 0
}
else
    jump_loaded = 0
if ((global.apariencia == 4) && (scr_canpull() && ((!instance_exists(obj_puller)) && (holding == 0))))
{
    enemigo = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_enemyparent, 0, 0)
    hold = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_holdparent, 0, 0)
    nube = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_nube, 0, 0)
    suelo_nieve = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_modelsolid, 0, 0)
    start_nieve = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_ground2, 0, 0)
    goal_nieve = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_ground3, 0, 0)
    if nube
    {
        speed = 0
        audio_play_sound(snd_SMB2_get, 0, false)
        c_nube = instance_create(x, y, obj_puller)
        c_nube.cloud = 1
        c_nube.obj = nube.id
    }
    else if (enemigo && ((enemigo.hardness < 99) || (enemigo.object_index == obj_banzaibill)))
    {
        speed = 0
        audio_play_sound(snd_SMB2_get, 0, false)
        c_enemy = instance_create(x, y, obj_puller)
        c_enemy.enemy = 1
        c_enemy.obj = enemigo.id
    }
    else if (hold && ((hold.object_index != obj_pswitch) && (hold.object_index != obj_spring)))
    {
        speed = 0
        audio_play_sound(snd_SMB2_get, 0, false)
        c_enemy = instance_create(x, y, obj_puller)
        c_enemy.held = 1
        c_enemy.obj = hold.id
    }
    else if (global.bg_level == "snow")
    {
        if (suelo_nieve || (start_nieve || goal_nieve))
        {
            speed = 0
            audio_play_sound(snd_SMB2_get, 0, false)
            with (instance_create(x, y, obj_puller))
                snowball = 1
        }
    }
    else if (global.powerup == -80)
    {
        speed = 0
        audio_play_sound(snd_SMB2_get, 0, false)
        instance_create(x, y, obj_puller)
    }
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
    hspeedmax = 1.3
if (keyboard_check_pressed(global.saltar) && ((disablecontrols == 0) && (((jumpnow == 0) && (state < 2)) || ((global.powerup == -30) && ((stompstyle == 0) && ((isduck == 0) && (holding == 0)))))))
{
    if (abs(hspeed) > 2.8)
    {
        if ((global.bg_level == "sky") && (global.modo_noche == 1))
        {
            if (global.powerup == -78)
                vspeed = -3.8
            else
                vspeed = -3.3
        }
        else if (global.powerup == -78)
            vspeed = -4.8
        else
            vspeed = -4.3
    }
    else if ((global.bg_level == "sky") && (global.modo_noche == 1))
    {
        if (global.powerup == -78)
        {
            if (round((hspeed / 2)) == 0)
                vspeed = -3.45
            else
                vspeed = -3.55
        }
        else if (jump_loaded == 60)
            vspeed = -3.6
        else if (round((hspeed / 2)) == 0)
            vspeed = -2.85
        else
            vspeed = -2.95
    }
    else if (global.powerup == -78)
    {
        if (round((hspeed / 2)) == 0)
            vspeed = -4.45
        else
            vspeed = -4.55
    }
    else if (jump_loaded == 60)
        vspeed = -4.5
    else if (round((hspeed / 2)) == 0)
        vspeed = -3.95
    else
        vspeed = -4.05
    audio_play_sound(scr_jump(), 0, false)
    jumpnow = 1
    s_hen = 1
    state = 2
}
if ((keyboard_check_pressed(global.saltar_spin) && (((global.apariencia == 2) || (global.apariencia == 3)) && ((disablecontrols == 0) && ((holding == 0) && ((isduck == 0) && ((jumpnow == 0) && (state < 2))))))) || (keyboard_check_pressed(global.saltar_spin) && (((global.apariencia == 2) || (global.apariencia == 3)) && ((disablecontrols == 0) && ((holding == 3) && ((isduck == 0) && ((global.yoshi > 0) && ((vspeed == 0) && ((jumpnow == 0) && (state < 2))))))))))
{
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
    s_hen = 1
    state = 2
    isduck = 0
    y--
    stompstyle = 1
    audio_play_sound(scr_snd_spinjump(), 0, false)
    alarm[7] = 10
    if (global.yoshi == 2)
    {
        global.yoshi = 0
        holding = 0
        if instance_exists(obj_kuriboshoe)
        {
            with (obj_kuriboshoe)
                event_user(0)
        }
    }
    else if (global.yoshi > 0)
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
else if ((keyboard_check_pressed(global.saltar_spin) && ((disablecontrols == 0) && ((holding == 2) && ((jumpnow == 0) && (state < 2))))) || ((keyboard_check_pressed(global.saltar_spin) && ((disablecontrols == 0) && ((holding == 3) && ((global.yoshi > 0) && ((vspeed != 0) && ((global.apariencia == 2) && (state == 2))))))) || ((keyboard_check_pressed(global.saltar_spin) && ((disablecontrols == 0) && ((holding == 3) && ((global.yoshi > 0) && (global.apariencia != 2))))) || (keyboard_check_pressed(global.saltar_spin) && ((disablecontrols == 0) && (((jumpnow == 0) && (state < 2)) && (global.apariencia != 2)))))))
{
    if (abs(hspeed) > 2.8)
    {
        if (global.powerup == -78)
            vspeed = -4.8
        else
            vspeed = -4.3
    }
    else if ((global.yoshi > 0) && (isswim == 1))
        vspeed = -2.16
    else if (global.powerup == -78)
    {
        if (round((hspeed / 2)) == 0)
            vspeed = -4.45
        else
            vspeed = -4.55
    }
    else if (round((hspeed / 2)) == 0)
        vspeed = -3.95
    else
        vspeed = -4.05
    audio_play_sound(scr_jump(), 0, false)
    jumpnow = 1
    s_hen = 1
    state = 2
    if (global.yoshi > 0)
    {
        global.yoshi = 0
        holding = 0
        if instance_exists(obj_yoshi2)
        {
            with (obj_yoshi2)
                event_user(1)
        }
        if instance_exists(obj_kuriboshoe)
        {
            stompstyle = 0
            with (obj_kuriboshoe)
                event_user(0)
        }
    }
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
    if (keyboard_check(global.derecha) && ((!keyboard_check(global.izquierda)) && ((disablecontrols == 0) && (modo_vuelo == 0))))
    {
        if (((holding == 2) && ((direct != 1) && ((stompstyle == 0) && (global.apariencia == 2)))) || ((global.apariencia == 3) && (direct != 1)))
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
                    hspeed += 0.04
                else
                    hspeed += 0.06
            }
            else
            {
                if (hspeed < 0)
                    hspeed += 0.07
                hspeed += 0.06
            }
        }
        if ((walljump == 0) && ((modo_vuelo == 0) && ((global.apariencia != 0) || ((global.apariencia == 0) && (state != 2)))))
            direct = 1
    }
    else if (keyboard_check(global.izquierda) && ((!keyboard_check(global.derecha)) && ((disablecontrols == 0) && (modo_vuelo == 0))))
    {
        if (((holding == 2) && ((direct != -1) && ((stompstyle == 0) && (global.apariencia == 2)))) || ((global.apariencia == 3) && (direct != -1)))
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
                    hspeed += -0.07
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
                if (hspeed < 0)
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
    if ((global.modo_noche == 1) && (global.bg_level == "sky"))
    {
        if (global.powerup == -39)
        {
            if (ygrav == 1)
                gravity = 0.05
            else if (pmeter > 5)
                gravity = 0
            else
                gravity = 0.02
        }
        else
            gravity = 0.05
        if (vspeed > 1)
            vspeed = 1
    }
    else if ((vspeed > -1) || (jumpnow != 1))
    {
        if (global.powerup == -39)
        {
            if (ygrav == 1)
                gravity = 0.3
            else if (pmeter > 5)
                gravity = 0
            else
                gravity = 0.15
        }
        else
            gravity = 0.3
        if (jumpnow == 1)
            jumpnow = 2
    }
    else if (ygrav == 1)
        gravity = 0.1
    else
        gravity = 0.1
    if (global.powerup == 3)
    {
        if ((keyboard_check(global.saltar) && ((sprite_index != spr_mario_cap_fly_decender) && ((sprite_index != spr_luigi_cap_fly_decender) && ((sprite_index != spr_toad_cap_fly_decender) && ((sprite_index != spr_toadette_cap_fly_decender) && (place_free(x, (y + 1)) && (vspeed > 0))))))) || (keyboard_check(global.saltar_spin) && ((sprite_index != spr_mario_cap_fly_decender) && ((sprite_index != spr_luigi_cap_fly_decender) && ((sprite_index != spr_toad_cap_fly_decender) && ((sprite_index != spr_toadette_cap_fly_decender) && (place_free(x, (y + 1)) && (vspeed > 0))))))))
        {
            gravity /= 2
            if (vspeed > 1)
                vspeed = 1
        }
    }
}
if (global.apariencia == 0)
{
    climb1 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climb, 0, 0)
    if (climb1 && (((((y + 19) > climb1.y) && ((climb1.object_index == obj_vine_green) && (climb1.image_index == 0))) || ((climb1.object_index != obj_vine_green) || (climb1.image_index != 0))) && ((isduck == 0) && ((global.yoshi == 0) && ((keyboard_check(global.arriba) || (keyboard_check(global.abajo) && (state == 2))) && (disablecontrols == 0))))))
    {
        if (hspeed > 0)
            direct = 1
        else if (hspeed < 0)
            direct = -1
        x = (climb1.x + 8)
        state = 3
        speed = 0
        gravity = 0
        canhang = 1
        alarm[6] = 8
    }
}
else
{
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
    }
}
if (stompstyle == 1)
{
    if (state != 2)
        stompstyle = 0
}
if (global.powerup == -39)
{
    if (disablegrav > 0)
    {
        if (state != 2)
            disablegrav = 0
        else
        {
            ygrav = 0
            disablegrav--
        }
    }
    else
        ygrav = 1
}
else
    disablegrav = 0
if ((state == 2) && ((isduck == 0) && (disablecontrols == 0)))
{
    if (keyboard_check(global.saltar) && ((!keyboard_check(global.saltar_spin)) && ((global.powerup == 3) && ((pmeter > 5) && ((stompstyle == 0) && (canfly == 0))))))
    {
        vspeed = -3.5
        fly_cap += 2
        if (fly_cap > 145)
        {
            canfly = 1
            jumpnow = 2
            fly_cap = 0
            with (obj_levelmanager)
            {
                pmeter = 0
                alarm[7] = 15
            }
            if (keyboard_check(global.lanzar_agarrar) && (holding == 0))
            {
                modo_vuelo = 1
                vspeed = 0.4
            }
        }
        jumpnow = 1
    }
    if (keyboard_check_released(global.saltar) && ((global.powerup == 3) && ((pmeter > 5) && (canfly == 0))))
    {
        with (obj_levelmanager)
        {
            pmeter = 0
            alarm[7] = 15
        }
        canfly = 1
        jumpnow = 2
        fly_cap = 0
        if (keyboard_check(global.lanzar_agarrar) && (holding == 0))
            modo_vuelo = 1
    }
    if ((vspeed < 0) && (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0) && ((global.powerup == 3) && ((pmeter > 5) && ((canfly == 0) && (stompstyle == 0))))))
    {
        with (obj_levelmanager)
        {
            pmeter = 0
            alarm[7] = 15
        }
        canfly = 1
        jumpnow = 2
        fly_cap = 0
        if (keyboard_check(global.lanzar_agarrar) && (holding == 0))
            modo_vuelo = 1
    }
    if (keyboard_check_released(global.lanzar_agarrar) && ((global.powerup == 3) && ((modo_vuelo == 1) && (canfly == 1))))
        modo_vuelo = 0
    if (keyboard_check(global.lanzar_agarrar) && ((global.powerup == 3) && ((modo_vuelo == 1) && (canfly == 1))))
    {
        if ((keyboard_check_pressed(global.izquierda) && (direct == 1)) || (keyboard_check_pressed(global.derecha) && (direct == -1)))
        {
            vspeed = 3
            if ((sprite_index == spr_mario_cap_fly) || ((sprite_index == spr_luigi_cap_fly) || ((sprite_index == spr_toad_cap_fly) || (sprite_index == spr_toadette_cap_fly))))
            {
                if (image_index > (image_number - 2))
                {
                    image_index = 0
                    image_speed = 0.15
                    sprite_index = scr_mario_cap_fly_acender()
                }
            }
        }
        if ((keyboard_check(global.derecha) && ((!keyboard_check(global.izquierda)) && (direct == 1))) || (keyboard_check(global.izquierda) && ((!keyboard_check(global.derecha)) && (direct == -1))))
        {
            if ((sprite_index == spr_mario_cap_fly) || ((sprite_index == spr_luigi_cap_fly) || ((sprite_index == spr_toad_cap_fly) || (sprite_index == spr_toadette_cap_fly))))
            {
                if (image_index > (image_number - 1))
                {
                    image_index = 0
                    image_speed = 0.18
                    sprite_index = scr_mario_cap_fly_decender()
                }
            }
        }
        if ((keyboard_check_released(global.derecha) && (direct == 1)) || (keyboard_check_released(global.izquierda) && (direct == -1)))
        {
            if ((sprite_index == spr_mario_cap_fly_decender) || ((sprite_index == spr_luigi_cap_fly_decender) || ((sprite_index == spr_toad_cap_fly_decender) || (sprite_index == spr_toadette_cap_fly_decender))))
            {
                if (image_index == 2)
                {
                    image_index = 0
                    image_speed = 0.2
                    sprite_index = scr_mario_cap_fly_acender_decender()
                    fly_high = 6
                }
                else
                {
                    image_index = 0
                    image_speed = 0.15
                    sprite_index = scr_mario_cap_fly_acender()
                }
            }
        }
    }
    if (keyboard_check(global.saltar_spin) && ((!keyboard_check(global.saltar)) && ((global.powerup == 3) && ((pmeter > 5) && (canfly == 0)))))
    {
        vspeed = -3.5
        fly_cap += 2
        if (fly_cap > 145)
        {
            canfly = 1
            jumpnow = 2
            fly_cap = 0
        }
        jumpnow = 1
    }
    if (keyboard_check_released(global.saltar_spin) && ((global.powerup == 3) && ((pmeter > 5) && (canfly == 1))))
    {
        jumpnow = 2
        fly_cap = 0
    }
    else if (keyboard_check_released(global.saltar_spin) && ((global.powerup == 3) && ((pmeter > 5) && (canfly == 0))))
    {
        canfly = 1
        jumpnow = 2
        fly_cap = 0
    }
}
if ((state == 2) && ((stompstyle == 0) && ((disablecontrols == 0) && ((global.yoshi == 0) || (global.yoshi == 2)))))
{
    if (((global.powerup == -39) || (global.powerup == -40)) && (keyboard_check_pressed(global.saltar) && ((jumpnow != 1) && ((wiggle < 12) && (sprite_index != scr_mariojumpstar())))))
    {
        if (!audio_is_playing(snd_atack_leaf))
            audio_play_sound(snd_atack_leaf, 0, false)
        wiggle = 16
        disablegrav = 8
        if (pmeter > 5)
            vspeed = -1.5
        else if (vspeed < 0)
            vspeed = max((vspeed + 0.05), 0)
        else
            vspeed = 0
    }
}


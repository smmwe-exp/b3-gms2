var colthwomps, col_solidtop, col_pinchos, col_enemigos, climb1;
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
    if (hspeed == 0)
        state = 0
    else
        state = 1
    statedelay = 0
    if ((instance_exists(obj_levelmanager) && ((inplatform == 0) && (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_plataforma, 0, 0) || collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_plataforma_blue, 0, 0)))) || (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_donut, 0, 0) || collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_estalactita, 0, 0)))
    {
        with (obj_levelmanager)
            fallw = 1
        inplatform = 1
    }
}
else
{
    if (statedelay > 4)
        state = 2
    else
        statedelay++
    gravity = 0.05
}
if (vspeed > 1)
    vspeed = 1
if ((keyboard_check_pressed(global.saltar) || keyboard_check_pressed(global.saltar_spin)) && (disablecontrols == 0))
{
    vspeed = -1
    audio_play_sound(scr_swim(), 0, false)
    state = 2
    isduck = 0
    isduckhold = 0
}
if (keyboard_check_pressed(global.saltar_spin) && ((disablecontrols == 0) && ((holding == 3) && (global.yoshi > 0))))
{
    vspeed = -1
    audio_play_sound(scr_swim(), 0, false)
    state = 2
    isduck = 0
    isduckhold = 0
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
if (keyboard_check(global.derecha) && ((!keyboard_check(global.izquierda)) && ((disablecontrols == 0) && ((isduck == 0) || (state == 2)))))
{
    hspeed += 0.06
    direct = 1
}
else if (keyboard_check(global.izquierda) && ((!keyboard_check(global.derecha)) && ((disablecontrols == 0) && ((isduck == 0) || (state == 2)))))
{
    hspeed -= 0.06
    direct = -1
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
if (state == 2)
{
    if (hspeed > 1)
        hspeed = 1
    if (hspeed < -1)
        hspeed = -1
}
else
{
    if (hspeed > 0.5)
        hspeed = 0.5
    if (hspeed < -0.5)
        hspeed = -0.5
}
if (noisy == 1)
{
    noisy = 0
    audio_stop_sound(scr_swim())
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
    if (floatnow == 1)
    {
        audio_stop_sound(snd_spin)
        floatnow = 0
    }
}
if (instance_exists(obj_lava_water) && ((global.bg_level == "forest") && ((global.modo_noche == 0) && ((y + 16) <= (obj_lava_water.y - 4)))))
{
    isswim = 0
    if place_meeting(x, (y + 16), obj_lava_water)
    {
        if ((global.apariencia != 0) && (vspeed > 0))
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
        if keyboard_check(global.saltar)
        {
            vspeed = -4.125
            jumpnow = 1
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
    }
    if (noisy == 1)
    {
        noisy = 0
        audio_stop_sound(scr_swim())
    }
}
if (global.yoshi != 2)
    stompstyle = 0


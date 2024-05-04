var enemigo, hold, nube, colthwomps, col_solidtop, col_pinchos, col_enemigos, climb1;
if ((global.apariencia == 4) && (scr_canpull() && ((!instance_exists(obj_puller)) && (holding == 0))))
{
    enemigo = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_enemyparent, 0, 0)
    hold = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_holdparent, 0, 0)
    nube = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_nube, 0, 0)
    if nube
    {
        audio_play_sound(snd_SMB2_get, 0, false)
        c_nube = instance_create(x, y, obj_puller)
        c_nube.cloud = 1
        c_nube.obj = nube.id
    }
    else if (enemigo && ((enemigo.hardness < 99) || (enemigo.object_index == obj_banzaibill)))
    {
        audio_play_sound(snd_SMB2_get, 0, false)
        c_enemy = instance_create(x, y, obj_puller)
        c_enemy.enemy = 1
        c_enemy.obj = enemigo.id
    }
    else if (hold && ((hold.object_index != obj_pswitch) && (hold.object_index != obj_spring)))
    {
        audio_play_sound(snd_SMB2_get, 0, false)
        c_enemy = instance_create(x, y, obj_puller)
        c_enemy.held = 1
        c_enemy.obj = hold.id
    }
    else if (global.bg_level == "snow")
    {
        audio_play_sound(snd_SMB2_get, 0, false)
        with (instance_create(x, y, obj_puller))
            snowball = 1
    }
    else if (global.powerup == -80)
    {
        audio_play_sound(snd_SMB2_get, 0, false)
        instance_create(x, y, obj_puller)
    }
}
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
if ((global.powerup == -29) && (holding == 0))
{
    ygrav = 0
    if keyboard_check(global.lanzar_agarrar)
        xspeedmax = 2
    else
        xspeedmax = 1
    if (keyboard_check(global.leftkey) && ((!crouch) && (!keyboard_check(global.rightkey))))
    {
        xspeed += -0.2
        xscale = -1
        swimtype = 0
    }
    else if (keyboard_check(global.rightkey) && ((!crouch) && (!keyboard_check(global.leftkey))))
    {
        xspeed += 0.2
        xscale = 1
        swimtype = 0
    }
    else
    {
        xspeed = (max(0, (abs(xspeed) - 0.2)) * sign(xspeed))
        if ((xspeed < 0.2) && (xspeed > -0.2))
            xspeed = 0
    }
    if keyboard_check(global.upkey)
    {
        yspeed += -0.2
        if (xspeed == 0)
            swimtype = 1
    }
    else if keyboard_check(global.downkey)
    {
        if (xspeed == 0)
            swimtype = 2
        if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_semisolid, 0, 0) || collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0))
            yspeed = 0
        else
            yspeed += 0.2
    }
    else
    {
        yspeed = (max(0, (abs(yspeed) - 0.2)) * sign(yspeed))
        if ((yspeed < 0.2) && (yspeed > -0.2))
            yspeed = 0
    }
    if (xspeed > xspeedmax)
        xspeed = xspeedmax
    if (xspeed < (-xspeedmax))
        xspeed = (-xspeedmax)
    if (yspeed > xspeedmax)
        yspeed = xspeedmax
    if (yspeed < (-xspeedmax))
        yspeed = (-xspeedmax)
}
else
{
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
        hspeed += -0.06
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
}
if (noisy == 1)
{
    noisy = 0
    audio_stop_sound(scr_swim())
}
if (global.apariencia == 0)
{
    climb1 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climb, 0, 0)
    if (climb1 && (((((y + 19) > climb1.y) && ((climb1.object_index == obj_vine_green) && (climb1.image_index == 0))) || ((climb1.object_index != obj_vine_green) || (climb1.image_index != 0))) && ((global.yoshi == 0) && ((isduck == 0) && ((keyboard_check(global.arriba) || (keyboard_check(global.abajo) && (state == 2))) && (disablecontrols == 0))))))
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
        if (floatnow == 1)
        {
            audio_stop_sound(snd_spin)
            floatnow = 0
        }
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


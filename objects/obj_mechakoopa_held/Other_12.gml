if keyboard_check(global.abajo)
{
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0) || (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_muncher, 0, 0)))
    {
        inwall = 1
        hspeed = 0
    }
    if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_slopeparent, 1, 0))
    {
        if (obj_mario.hspeed == 0)
            hspeed = (0.7 * obj_mario.direct)
        else
            hspeed = (obj_mario.hspeed / 2)
    }
    else
        vspeed = 0.1
    inmune = 1
    alarm[3] = 15
    obj_mario.isduckhold = 0
}
else if (keyboard_check(global.arriba) && (global.apariencia == 2))
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (obj_mario)
        event_user(7)
    obj_mario.stompstyle = 0
    with (instance_create((x + 8), (y - 2), obj_smoke))
        sprite_index = spr_spinthump
    if (obj_mario.hspeed == 0)
        hspeed = 0
    else
        hspeed = (obj_mario.direct / 2)
    if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    {
        vspeed = -3
        swimming = 1
    }
    else
        vspeed = -6.125
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0) || (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_muncher, 0, 0)))
        inwall = 1
    inmune = 1
    alarm[3] = 15
    obj_mario.isduckhold = 0
}
else
{
    if (global.apariencia == 3)
        audio_play_sound(choose(443, 444, 443), 0, false)
    else
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        with (instance_create((x + 8), (y - 2), obj_smoke))
            sprite_index = spr_spinthump
    }
    with (obj_mario)
        event_user(7)
    obj_mario.stompstyle = 0
    y += 1
    bouncy = 1
    sprite_index = stun1
    image_speed = 0.15
    image_index = 0
    alarm[0] = 312
    alarm[1] = 432
    image_speed = 0.15
    if ((!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)) && ((!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_bullebill_base, 0, 0)) && ((!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_muncher, 0, 0)) && ((!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_pinchos, 0, 0)) && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_cannon, 0, 0))))))
    {
        if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
        {
            vspeed = -1
            swimming = 1
        }
        else
            vspeed = -1.5
        if (!collision_rectangle(x, bbox_top, x, (bbox_bottom - 4), obj_slopeparent, 1, 0))
        {
            if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
                hspeed = ((1 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
            else
                hspeed = ((3 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
        }
        else
            vspeed = 0.1
    }
    else
        inwall = 1
    inmune = 1
    alarm[3] = 15
    obj_mario.isduckhold = 0
}


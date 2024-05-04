var lugar;
if keyboard_check(global.abajo)
{
    if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)
    {
        inwall = 1
        hspeed = 0
    }
    if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_slopeparent, 1, 0))
        hspeed = (0.5 * obj_mario.direct)
    else
        vspeed = 0.1
    obj_mario.isduckhold = 0
    inmune = 1
    alarm[6] = 15
}
else if (keyboard_check(global.arriba) && (global.apariencia == 2))
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (obj_mario)
        event_user(7)
    obj_mario.stompstyle = 0
    with (instance_create(x, y, obj_smoke))
        sprite_index = spr_spinthump
    if (obj_mario.hspeed == 0)
        hspeed = 0
    else
        hspeed = (obj_mario.direct / 2)
    if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    {
        vspeed = -3
        swimming = 1
    }
    else
        vspeed = -6.125
    if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)
        inwall = 1
    obj_mario.isduckhold = 0
}
else if (vspeed >= 0)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (obj_mario)
        event_user(7)
    obj_mario.stompstyle = 0
    with (instance_create(x, y, obj_smoke))
        sprite_index = spr_spinthump
    alarm[5] = -1
    if place_meeting(x, y, obj_solid)
    {
        if (obj_mario.direct == 1)
            lugar = (x - 16)
        else
            lugar = (x + 16)
    }
    else
        lugar = x
    with (instance_create(lugar, y, obj_shell_drybones_held))
    {
        sprite_index = other.sprite_index
        if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
        {
            prevhspeed = (2.5 * sign(obj_mario.direct))
            hspeed = (2.5 * sign(obj_mario.direct))
        }
        else
        {
            prevhspeed = (4.5 * sign(obj_mario.direct))
            hspeed = (4.5 * sign(obj_mario.direct))
        }
        alarm[1] = 25
    }
    obj_mario.isduckhold = 0
    instance_destroy()
}


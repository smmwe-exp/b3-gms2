var lugar;
if keyboard_check(global.abajo)
{
    if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)
    {
        inwall = 1
        hspeed = 0
    }
    if (obj_mario.vspeed != 0)
        vspeed = 0.3
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
    with (instance_create(lugar, (y + 1), obj_shell_held))
    {
        vspeed = 0.1
        if (other.sprite_index == spr_shell_down_inside)
            sprite_index = spr_shell_down
        else if (other.sprite_index == spr_shell_inside)
            sprite_index = spr_shell
        else if (other.sprite_index == spr_shell_red_inside)
            sprite_index = spr_shell_red
        else if (other.sprite_index == spr_shell_red_down_inside)
            sprite_index = spr_shell_red_down
        else if (other.sprite_index == spr_buzzy_shake)
            sprite_index = spr_shell_buzzy
        else if (other.sprite_index == spr_buzzy_shake_down)
            sprite_index = spr_shell_buzzy_down
        else if (other.sprite_index == spr_spiny_shake)
            sprite_index = spr_spiny_dead
        else if (other.sprite_index == spr_SMB3_buzzy_shake)
            sprite_index = spr_SMB3_shell_buzzy
        else if (other.sprite_index == spr_SMB3_buzzy_shake_down)
            sprite_index = spr_SMB3_shell_buzzy_down
        else if (other.sprite_index == spr_SMB3_buzzy_shake_night)
            sprite_index = spr_SMB3_shell_buzzy_night
        else if (other.sprite_index == spr_SMB3_buzzy_shake_down_night)
            sprite_index = spr_SMB3_shell_buzzy_down_night
        else if (other.sprite_index == spr_SMB3_spiny_shake)
            sprite_index = spr_SMB3_spiny_dead
        else
            sprite_index = other.sprite_index
        koopainside = other.koopainside
        if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
        {
            prevhspeed = (2.5 * sign(obj_mario.direct))
            hspeed = (2.5 * sign(obj_mario.direct))
        }
        else
        {
            prevhspeed = ((2.6 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
            hspeed = ((2.6 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
        }
        inmune = 1
        alarm[2] = 15
    }
    obj_mario.isduckhold = 0
    instance_destroy()
}


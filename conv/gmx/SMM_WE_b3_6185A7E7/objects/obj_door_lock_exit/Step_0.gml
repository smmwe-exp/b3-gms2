if (lock == 1)
{
    sprite_index = s_doorlock_anim
    image_index = 0
}
else if ((sprite_index != s_doorlock_unlock_close) && (sprite_index != s_doorlock_anim))
    sprite_index = s_doorlock_unlock
if (rot == 1)
{
    if (up == 0)
    {
        if (rotacion > (rot_angle - 5))
            rotacion -= 1
        else
            up = 1
    }
    if (up == 1)
    {
        if (rotacion < (rot_angle + 5))
            rotacion += 1
        else
            up = 2
    }
    else if (up == 2)
    {
        if (rotacion > rot_angle)
            rotacion -= 1
        else
        {
            up = 0
            rot = 0
        }
    }
}
else
    rotacion = rot_angle
if (keyboard_check_pressed(global.arriba) && ((global.keys == 0) && ((lock == 1) && (place_meeting(x, y, obj_mario) && ((obj_mario.state != 2) && ((visible == 1) && ((y > (obj_mario.y + 10)) && ((y < (obj_mario.y + 17)) && ((obj_mario.x >= x) && (obj_mario.x <= (x + 16)))))))))))
{
    rot = 1
    if (!audio_is_playing(snd_oneway))
        audio_play_sound(snd_oneway, 0, false)
}
else if (keyboard_check(global.arriba) && ((global.keys > 0) && ((lock == 1) && (place_meeting(x, y, obj_mario) && ((obj_mario.state != 2) && ((visible == 1) && ((y > (obj_mario.y + 10)) && ((y < (obj_mario.y + 17)) && ((obj_mario.x >= x) && (obj_mario.x <= (x + 16)))))))))))
{
    if instance_exists(obj_levelmanager)
    {
        time_blow = obj_levelmanager.alarm[2]
        with (obj_levelmanager)
            alarm[2] = 0
    }
    lock = 0
    if (global.keys == 1)
    {
        global.keys = 0
        if instance_exists(obj_key_fallow)
        {
            with (obj_key_fallow)
                instance_destroy()
        }
    }
    else if (global.keys > 1)
    {
        global.keys--
        if instance_exists(obj_key_fallow)
        {
            with (obj_key_fallow)
                followers--
        }
    }
    with (instance_create(x, y, obj_smoke))
    {
        if (global.apariencia != 2)
            sprite_index = spr_SMB3_sparkles_door
        else
            sprite_index = spr_sparkles_door
        image_speed = 0.3
        depth = (other.depth - 1)
    }
    with (instance_create(x, y, obj_smoke))
    {
        if (global.apariencia == 0)
            sprite_index = spr_SMB_doorlock_anim_key
        else if (global.apariencia == 1)
            sprite_index = spr_SMB3_doorlock_anim_key
        else if (global.apariencia == 4)
            sprite_index = spr_SMB2_doorlock_anim_key
        else
            sprite_index = spr_doorlock_anim_key
        image_speed = 0.3
        depth = -10
    }
    if (global.apariencia != 2)
        audio_play_sound(snd_SMB3_doorlock_open, 0, false)
    else
        audio_play_sound(snd_doorlock_open, 0, false)
    image_index = 0
    image_speed = 0.3
    with (returndoor)
    {
        with (instance_create(x, y, obj_smoke))
        {
            if (global.apariencia != 2)
                sprite_index = spr_SMB3_sparkles_door
            else
                sprite_index = spr_sparkles_door
            image_speed = 0.3
        }
        lock = 0
        sprite_index = s_doorlock_unlock
        image_speed = 0
        image_index = 0
    }
    with (instance_create(obj_mario.x, (y - 16), obj_doormario))
    {
        direct = obj_mario.direct
        snow = obj_mario.snow
        helmet = obj_mario.helmet
    }
    with (obj_mario)
        instance_destroy()
    if instance_exists(obj_autoscroll)
    {
        with (obj_autoscroll)
            hspeed = 0
    }
}
else if (keyboard_check(global.arriba) && ((lock == 0) && (instance_exists(obj_mario) && (place_meeting(x, y, obj_mario) && ((obj_mario.state != 2) && ((visible == 1) && ((y > (obj_mario.y + 10)) && ((y < (obj_mario.y + 17)) && ((obj_mario.x >= x) && ((obj_mario.x <= (x + 16)) && (sprite_index == s_doorlock_unlock)))))))))))
{
    if instance_exists(obj_levelmanager)
    {
        time_blow = obj_levelmanager.alarm[2]
        with (obj_levelmanager)
            alarm[2] = 0
    }
    audio_play_sound(scr_snd_door_open(), 0, false)
    image_index = 0
    image_speed = 0.12
    with (instance_create(obj_mario.x, (y - 16), obj_doormario))
    {
        direct = obj_mario.direct
        snow = obj_mario.snow
        helmet = obj_mario.helmet
    }
    with (obj_mario)
        instance_destroy()
    if instance_exists(obj_autoscroll)
    {
        with (obj_autoscroll)
            hspeed = 0
    }
    alarm[0] = 55
}


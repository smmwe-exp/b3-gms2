if (keyboard_check(global.arriba) && (instance_exists(obj_mario) && (place_meeting(x, y, obj_mario) && ((obj_mario.state != 2) && ((visible == 1) && ((y > (obj_mario.y + 10)) && ((y < (obj_mario.y + 17)) && ((obj_mario.x >= x) && (obj_mario.x <= (x + 16))))))))))
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
    obj_mario.visible = 0
    with (obj_mario)
        instance_destroy()
    if instance_exists(obj_autoscroll)
    {
        with (obj_autoscroll)
            hspeed = 0
    }
    alarm[0] = 55
}


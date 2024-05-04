if (!instance_exists(obj_mario))
{
    alarm[0] = 1
    exit
}
if (((obj_mario.x - 2) <= x) && ((obj_mario.x > (x - 256)) && ((y >= (obj_mario.y - 160)) && ((!collision_rectangle((bbox_left - 1), y, (bbox_left - 1), (y + 15), obj_solid, 0, 0)) && ((!collision_rectangle((bbox_left - 1), y, (bbox_left - 1), (y + 15), obj_cannon, 0, 0)) && ((!collision_rectangle((bbox_left - 1), y, (bbox_left - 1), (y + 15), obj_pinchos, 0, 0)) && ((!collision_rectangle((bbox_left - 1), y, (bbox_left - 1), (y + 15), obj_bullebill_base, 0, 0)) && (!collision_rectangle((bbox_left - 1), y, (bbox_left - 1), (y + 15), obj_mario, 0, 0)))))))))
{
    if ((shoot_left != obj_lighting) && instance_exists(shoot_left))
        alarm[0] = 15
    else
    {
        if (global.apariencia == 2)
            audio_play_sound(snd_explode, 0, false)
        else
            audio_play_sound(snd_SMB3_explode, 0, false)
        with (instance_create(x, y, obj_smoke))
            depth = -10
        event_user(1)
    }
}
else if (((obj_mario.x + 2) >= (x + 16)) && ((obj_mario.x < (x + 256)) && ((y >= (obj_mario.y - 160)) && ((!collision_rectangle((bbox_right + 1), y, (bbox_right + 1), (y + 15), obj_solid, 0, 0)) && ((!collision_rectangle((bbox_right + 1), y, (bbox_right + 1), (y + 15), obj_cannon, 0, 0)) && ((!collision_rectangle((bbox_right + 1), y, (bbox_right + 1), (y + 15), obj_pinchos, 0, 0)) && ((!collision_rectangle((bbox_right + 1), y, (bbox_right + 1), (y + 15), obj_bullebill_base, 0, 0)) && (!collision_rectangle((bbox_right + 1), y, (bbox_right + 1), (y + 15), obj_mario, 0, 0)))))))))
{
    if ((shoot_right != obj_lighting) && instance_exists(shoot_right))
        alarm[0] = 15
    else
    {
        if (global.apariencia == 2)
            audio_play_sound(snd_explode, 0, false)
        else
            audio_play_sound(snd_SMB3_explode, 0, false)
        with (instance_create((x + 16), y, obj_smoke))
            depth = -8
        event_user(2)
    }
}
else
    alarm[0] = 60


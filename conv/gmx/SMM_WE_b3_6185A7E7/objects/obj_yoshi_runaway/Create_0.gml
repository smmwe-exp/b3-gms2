colour = 0
color = 0
swimming = 0
image_speed = 0.3
if instance_exists(obj_mario)
{
    direct = obj_mario.direct
    with (obj_mario)
    {
        vspeed = -4
        visible = 1
    }
}
else
    direct = 1
hspeed = (direct * 2)
global.yoshi = 0
mouthholder = -4
mouthsprite = -4
audio_play_sound(snd_yoshi_golpe, 0, false)
ready = 0
modo_lava = 0
alarm[0] = 80
alarm[1] = 1
event_inherited()


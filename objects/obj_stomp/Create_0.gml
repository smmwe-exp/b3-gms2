with (instance_create((x - 16), y, obj_smoke))
{
    hspeed = -1
    depth = -6
}
with (instance_create(x, y, obj_smoke))
{
    hspeed = 1
    depth = -6
}
audio_play_sound(snd_stomp2, 0, false)
image_speed = 0.5
hitpoint = 0


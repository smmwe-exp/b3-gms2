var dis_fire;
if (global.apariencia == 1)
{
    dis_fire = 16
    audio_play_sound(snd_SMB3_bowser_fire, 0, false)
}
else if (global.apariencia == 2)
{
    dis_fire = 8
    audio_play_sound(snd_flames, 0, false)
}
if (direct == 1)
{
    with (instance_create((x + 20), (y - dis_fire), obj_bowser_fire))
    {
        hspeed = (2 * other.direct)
        direct = other.direct
        if (other.vspeed == 0)
            decender = 1
    }
}
else
{
    with (instance_create((x - 20), (y - dis_fire), obj_bowser_fire))
    {
        hspeed = (2 * other.direct)
        direct = other.direct
        if (other.vspeed == 0)
            decender = 1
    }
}
if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_bowser_walk
    image_speed = 0
    image_index = 0
    alarm[1] = 110
}
else if (global.apariencia == 2)
    alarm[1] = 110


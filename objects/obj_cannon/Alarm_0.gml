if (!instance_exists(obj_mario))
{
    alarm[0] = 1
    exit
}
audio_stop_sound(scr_snd_explode())
audio_play_sound(scr_snd_explode(), 0, false)
with (instance_create(((x + 8) + lengthdir_x(8, direct)), ((y + 8) + lengthdir_y(8, direction)), obj_cannonball))
{
    if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
        motion_set(other.direct, 0.5)
    else
        motion_set(other.direct, 1)
}
alarm[0] = 192


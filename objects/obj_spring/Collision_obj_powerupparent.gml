if ((!held) && (other.wings == 0))
{
    if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && (other.vspeed > 0))
    {
        if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((other.y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0))))))
            other.vspeed = -3.625
        else
            other.vspeed = -5.225
        other.hspeed = 0
        if (image_speed == 0)
            image_speed = 0.3
        audio_stop_sound(scr_snd_spring())
        audio_play_sound(scr_snd_spring(), 0, false)
    }
}


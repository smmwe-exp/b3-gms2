if (gravity == 0)
{
    if ((wings == 0) && (paracaidas == 0))
    {
        alarm[10] = -1
        hspeed = 0
    }
    if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
        direct = -1
    else
        direct = 1
    if (global.apariencia == 0)
    {
        if (global.bg_level == "snow")
            sprite_index = spr_SMB_spike_atack_snow
        else if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB_spike_atack_night
        else
            sprite_index = spr_SMB_spike_atack
        image_speed = 0.2
    }
    else if (global.apariencia == 1)
    {
        if (global.bg_level == "snow")
            sprite_index = spr_SMB3_spike_atack_snow
        else if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB3_spike_atack_night
        else
            sprite_index = spr_SMB3_spike_atack
        image_speed = 0.2
    }
    else if (global.apariencia == 2)
    {
        if (global.bg_level == "snow")
            sprite_index = spr_spike_atack_snow
        else
        {
            sprite_index = spr_spike_atack
            image_speed = 0.3
        }
    }
}
else
    alarm[0] = 1


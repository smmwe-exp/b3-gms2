if ((sprite_index == spr_spike_atack) || ((sprite_index == spr_spike_atack_snow) || ((sprite_index == spr_SMB3_spike_atack) || ((sprite_index == spr_SMB3_spike_atack_night) || ((sprite_index == spr_SMB3_spike_atack_snow) || ((sprite_index == spr_SMB_spike_atack) || ((sprite_index == spr_SMB_spike_atack_night) || (sprite_index == spr_SMB_spike_atack_snow))))))))
{
    if (global.apariencia == 0)
    {
        if (global.bg_level == "snow")
            sprite_index = spr_SMB_spike_atack_snow_end
        else if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB_spike_atack_night_end
        else
            sprite_index = spr_SMB_spike_atack_end
        image_speed = 0.2
    }
    else if (global.apariencia == 1)
    {
        if (global.bg_level == "snow")
            sprite_index = spr_SMB3_spike_atack_snow_end
        else if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            sprite_index = spr_SMB3_spike_atack_night_end
        else
            sprite_index = spr_SMB3_spike_atack_end
        image_speed = 0.2
    }
    else if (global.apariencia == 2)
    {
        if (global.bg_level == "snow")
            sprite_index = spr_spike_atack_snow_end
        else
            sprite_index = spr_spike_atack_end
        image_speed = 0.3
    }
    if (global.bg_level == "snow")
        ball = instance_create(x, (y - 16), obj_snow_ball)
    else
        ball = instance_create(x, (y - 16), obj_spike_ball)
    ball.visible = 0
}
else if ((sprite_index == spr_spike_atack_end) || ((sprite_index == spr_spike_atack_snow_end) || ((sprite_index == spr_SMB3_spike_atack_end) || ((sprite_index == spr_SMB3_spike_atack_night_end) || ((sprite_index == spr_SMB3_spike_atack_snow_end) || ((sprite_index == spr_SMB_spike_atack_end) || ((sprite_index == spr_SMB_spike_atack_night_end) || (sprite_index == spr_SMB_spike_atack_snow_end))))))))
{
    if (global.apariencia == 0)
    {
        sprite_index = spr_SMB_spike
        image_speed = 0.15
    }
    else if (global.apariencia == 1)
    {
        sprite_index = spr_SMB3_spike
        image_speed = 0.15
    }
    else if (global.apariencia == 2)
    {
        sprite_index = spr_spike
        image_speed = 0.15
    }
    if (ball != obj_lighting)
    {
        if instance_exists(ball)
        {
            if (global.bg_level == "snow")
            {
                with (instance_create(x, (y - 16), obj_snow_ball_held))
                {
                    hspeed = (1.2 * sign(other.direct))
                    if (global.apariencia == 2)
                        vspeed = -2.5
                    alarm[0] = 20
                }
                with (ball)
                    instance_destroy()
            }
            else
            {
                with (ball)
                {
                    visible = 1
                    hspeed = (1.2 * sign(other.direct))
                    ready = 1
                    alarm[0] = 20
                }
            }
            ball = 0
        }
    }
    if (global.apariencia != 2)
    {
        if (cont_ball >= 1)
        {
            cont_ball = 0
            if (wings == 0)
                alarm[10] = 20
            alarm[0] = 180
        }
        else
        {
            cont_ball++
            alarm[0] = 20
        }
    }
    else if (global.apariencia == 2)
        alarm[0] = 180
}


if ((wings == 0) || (paracaidas == 1))
    event_inherited()
if (global.apariencia == 2)
{
    if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
        direct = -1
    else
        direct = 1
    if (gravity == 0)
    {
        hspeed = (max(0, (abs(hspeed) - 0.1)) * sign(hspeed))
        if (abs(hspeed) < 0.1)
            hspeed = 0
    }
}
else if ((global.apariencia != 2) && (wings == 0))
{
    if (obj_levelmanager.editor == 0)
    {
        if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
        {
            if ((direct == 1) && (hspeed > 0.3))
            {
                hspeed -= 0.08
                if (hspeed <= 0.3)
                    hspeed = 0.3
            }
            else if ((direct == -1) && (hspeed < -0.3))
            {
                hspeed += 0.08
                if (hspeed >= -0.3)
                    hspeed = -0.3
            }
        }
        else if ((direct == 1) && (hspeed > 0.5))
        {
            hspeed -= 0.08
            if (hspeed <= 0.5)
                hspeed = 0.5
        }
        else if ((direct == -1) && (hspeed < -0.5))
        {
            hspeed += 0.08
            if (hspeed >= -0.5)
                hspeed = -0.5
        }
    }
}
if ((wings == 1) && (paracaidas == 0))
{
    wings_anim += 0.12
    if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
        direct = -1
    else
        direct = 1
    if (y > (ystart + 32))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.015
    }
    else if (y < (ystart - 32))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.015
    }
    if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_muncher, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0))) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0))))))
    {
        if (vspeed > 0)
            vspeed = -0.4
    }
    else if ((vspeed < 0) && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
        vspeed = 0.4
}
if (paracaidas == 1)
{
    direct = -1
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
    if (gravity == 0)
    {
        instance_create((x + (3 * direct)), y, obj_paracaidas_go)
        paracaidas = 0
        ystart = (y - 32)
        hspeed = 0
        alarm[10] = 10
    }
}
if (ball != obj_lighting)
{
    if instance_exists(ball)
    {
        if (global.bg_level == "snow")
            ball.x = x
        else
            ball.x = x
        ball.y = (y - 16)
    }
    else
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
        if (global.apariencia != 2)
        {
            if (cont_ball >= 1)
            {
                cont_ball = 0
                if (wings == 0)
                    alarm[10] = 10
                alarm[0] = 180
            }
            else
            {
                cont_ball++
                alarm[0] = 10
            }
        }
        else if (global.apariencia == 2)
            alarm[0] = 180
        ball = 0
    }
}


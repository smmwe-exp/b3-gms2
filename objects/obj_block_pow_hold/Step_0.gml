var col_mario, col_estalactita;
col_mario = collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_mario, 1, 0)
if instance_exists(obj_mario)
{
    if (col_mario && ((global.powerup == -77) && ((global.yoshi == 0) && (obj_mario.can_break_block == 1))))
    {
        explode = 1
        event_user(6)
        with (obj_mario)
        {
            jumpnow = 2
            state = 2
            alarm[4] = 15
            if (isswim == 1)
                vspeed = -2
            else
                vspeed = -4
            y--
        }
    }
}
if (collision_rectangle(bbox_left, (bbox_top - 8), bbox_right, (bbox_top + 7), obj_mario, 0, 0) && ((image_speed != 0) && ((inmune == 0) && ((speed != 0) && (gravity != 0)))))
{
    hspeed = (max(0, (abs(hspeed) - 0.075)) * sign(hspeed))
    if (abs(hspeed) < 0.075)
        hspeed = 0
    obj_mario.x += hspeed
    obj_mario.y = ceil((bbox_top - (31 - vspeed)))
}
col_estalactita = collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_estalactita, 1, 0)
if (col_estalactita && ((col_estalactita.vspeed > 0) && (held == 0)))
{
    explode = 1
    event_user(6)
    with (col_estalactita)
        event_user(0)
}
if instance_exists(mytop)
{
    mytop.x = x
    mytop.y = y
}
if (held == 0)
{
    if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
        swimming = 1
    else
        swimming = 0
    if instance_exists(obj_mario)
    {
        if (inwall == 0)
        {
            if collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0)
            {
                gravity = 0
                vspeed = 0
            }
            col_shell1 = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_shell, 0, 0)
            if (col_shell1 && ((col_shell1.vspeed < 0) && (obj_mario.holding == 0)))
            {
                explode = 1
                event_user(6)
            }
            col_shell2 = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_shell_held, 0, 0)
            if (col_shell2 && (col_shell2.bbox_bottom > (bbox_top + 5)))
            {
                explode = 1
                event_user(6)
                with (col_shell2)
                    event_user(0)
            }
            col_bobomb = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_bobomb_hold, 0, 0)
            if (col_bobomb && ((col_bobomb.bbox_bottom > (bbox_top + 5)) && (col_bobomb.held == 0)))
            {
                explode = 1
                event_user(6)
            }
            event_user(3)
            event_user(4)
            if (gravity == 0)
            {
                if (swimming == 0)
                {
                    hspeed = (max(0, (abs(hspeed) - 0.145)) * sign(hspeed))
                    if (abs(hspeed) < 0.145)
                        hspeed = 0
                }
                else if (swimming == 1)
                {
                    hspeed = (max(0, (abs(hspeed) - 0.245)) * sign(hspeed))
                    if (abs(hspeed) < 0.244)
                        hspeed = 0
                }
            }
            if (collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 0, 0) && (vspeed < 0))
            {
                speed = 0
                gravity = 0
                inwall = 1
            }
        }
        else
        {
            gravity /= 2
            if (vspeed > 1)
                vspeed = 1
            hspeed = 0
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_solid, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)
                x++
            if (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 0, 0))
                inwall = 0
        }
    }
    else
    {
        event_user(3)
        event_user(4)
    }
    if (instance_exists(obj_lava_water) && (((y + 8) >= (obj_lava_water.y - 12)) && ((global.bg_level == "castle") && (modo_lava == 0))))
    {
        if (global.apariencia != 0)
        {
            with (instance_create((x + 8), (y - 8), obj_smoke))
            {
                if (global.apariencia == 1)
                    sprite_index = spr_SMB3_splash_lava
                else if (global.apariencia == 2)
                    sprite_index = spr_splash_lava
                depth = -12
            }
        }
        modo_lava = 1
    }
    else if (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && ((global.bg_level == "forest") && ((global.modo_noche == 1) && (modo_lava == 0)))))
    {
        if (global.apariencia != 0)
        {
            with (instance_create((x + 8), (y - 8), obj_smoke))
            {
                if (global.apariencia == 1)
                    sprite_index = spr_SMB3_splash_lava_purple
                else if (global.apariencia == 2)
                    sprite_index = spr_splash_lava_purple
                depth = -12
            }
        }
        modo_lava = 1
    }
    else if ((y > room_height) && ((object_index != obj_cap_mario) && ((object_index != obj_helmet) && ((object_index != obj_helmet_spiny) && (held == 0)))))
        instance_destroy()
    if (instance_exists(obj_lava_water) && (((y + 8) <= (obj_lava_water.y - 12)) && ((obj_lava_water.vspeed > 0) && ((modo_lava == 1) || (swimming == 1)))))
        y = (obj_lava_water.y - 20)
}


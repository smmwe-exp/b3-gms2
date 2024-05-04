var col_poww;
if (held == 0)
{
    if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
        swimming = 1
    else
        swimming = 0
    if (collision_rectangle(bbox_left, (bbox_top - 8), bbox_right, (bbox_top + 7), obj_mario, 0, 0) && ((image_speed != 0) && ((inmune == 0) && ((speed != 0) && ((object_index != obj_bobomb_hold) && ((object_index != obj_galoomba_hold) && (object_index != obj_galoomba_hold2)))))))
    {
        hspeed = (max(0, (abs(hspeed) - 0.075)) * sign(hspeed))
        if (abs(hspeed) < 0.075)
            hspeed = 0
        obj_mario.x += hspeed
        if (object_index == obj_spring)
            obj_mario.y = ((y + (image_index * 4)) - 32)
        else
            obj_mario.y = ceil((bbox_top - (31 - vspeed)))
    }
    col_poww = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_block_pow_hold, 1, 0)
    if ((vspeed < 0) && (col_poww && (col_poww.held == 0)))
    {
        if (vspeed != 0)
        {
            while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_block_pow_hold, 1, 0) || collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_islope_r, 1, 0))
                y++
        }
        vspeed = 0
        with (col_poww)
        {
            explode = 1
            event_user(6)
        }
    }
    if instance_exists(obj_mario)
    {
        if (inwall == 0)
        {
            event_inherited()
            if (gravity == 0)
            {
                if (swimming == 0)
                {
                    hspeed = (max(0, (abs(hspeed) - 0.085)) * sign(hspeed))
                    if (abs(hspeed) < 0.085)
                        hspeed = 0
                }
                else if (swimming == 1)
                {
                    hspeed = (max(0, (abs(hspeed) - 0.085)) * sign(hspeed))
                    if (abs(hspeed) < 0.085)
                        hspeed = 0
                }
            }
            if ((collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 0, 0) || (collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_muncher, 0, 0) || (collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_pinchos, 0, 0) || (collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_cannon, 0, 0))))) && (vspeed < 0))
            {
                hspeed = 0
                inwall = 1
            }
        }
        else
        {
            if ((object_index == obj_galoomba_hold) || (object_index == obj_bobomb_hold))
                direct = (-direct)
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_solid, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)
                x++
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_muncher, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 1, 0)
                x++
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
                x++
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 1, 0)
                x++
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_cannon, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_cannon, 1, 0)
                x++
            if ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_muncher, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bullebill_base, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_pinchos, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_cannon, 0, 0))))))
                inwall = 0
        }
    }
    else if instance_exists(obj_deadmario)
    {
        vspeed = 0
        gravity = 0
    }
    if (instance_exists(obj_lava_water) && (((y + 8) >= (obj_lava_water.y - 12)) && ((global.bg_level == "castle") && ((object_index != obj_bobomb_hold) && (modo_lava == 0)))))
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
    else if (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && ((global.bg_level == "forest") && ((global.modo_noche == 1) && ((object_index != obj_bobomb_hold) && (modo_lava == 0))))))
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


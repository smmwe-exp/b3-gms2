var liana_right, liana_left;
if (disablecontrols == 0)
{
    if (global.apariencia == 0)
    {
        jumpnow = 0
        if keyboard_check_pressed(global.derecha)
        {
            liana_right = collision_point((x + 16), (y + 18), obj_climb, 0, 0)
            if ((direct == -1) && (liana_right && ((!collision_point((x + 16), (y + 18), obj_solid, 0, 0)) && ((!collision_point((x + 16), (y + 18), obj_pinchos, 0, 0)) && ((!collision_point((x + 16), (y + 18), obj_bullebill_base, 0, 0)) && ((!collision_point((x + 16), (y + 18), obj_muncher, 0, 0)) && ((!collision_point((x + 16), (y + 18), obj_cannon, 0, 0)) && (!collision_point((x + 16), (y + 18), obj_onewaygate_right, 0, 0)))))))))
            {
                x = (liana_right.x + 8)
                direct = 1
            }
            else
                direct = -1
        }
        else if keyboard_check_pressed(global.izquierda)
        {
            liana_left = collision_point((x - 16), (y + 18), obj_climb, 0, 0)
            if ((direct == 1) && (liana_left && ((!collision_point((x - 16), (y + 18), obj_solid, 0, 0)) && ((!collision_point((x - 16), (y + 18), obj_pinchos, 0, 0)) && ((!collision_point((x - 16), (y + 18), obj_bullebill_base, 0, 0)) && ((!collision_point((x - 16), (y + 18), obj_muncher, 0, 0)) && ((!collision_point((x - 16), (y + 18), obj_cannon, 0, 0)) && (!collision_point((x - 16), (y + 18), obj_onewaygate_left, 0, 0)))))))))
            {
                x = (liana_left.x + 8)
                direct = -1
            }
            else
                direct = 1
        }
        if (keyboard_check(global.arriba) && (!keyboard_check(global.abajo)))
        {
            if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_climb, 0, 0))
                vspeed = 0
            else if keyboard_check(global.lanzar_agarrar)
                vspeed = -1.5
            else
                vspeed = -1
        }
        else if (keyboard_check(global.abajo) && (!keyboard_check(global.arriba)))
        {
            if keyboard_check(global.lanzar_agarrar)
                vspeed = 1.5
            else
                vspeed = 1
            if (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0))
            {
                state = 0
                jumpnow = 0
            }
        }
        else
            vspeed = 0
        if (keyboard_check_pressed(global.saltar) || keyboard_check_pressed(global.saltar_spin))
        {
            if (direct == 1)
                x -= 6
            else
                x += 6
            audio_play_sound(scr_jump(), 0, false)
            state = 2
            jumpnow = 1
            if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0))))))
                vspeed = -1.8
            else
                vspeed = -3.75
            direct = (-direct)
        }
        if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climb, 0, 0))
        {
            if (vspeed < 0)
                vspeed = 0
            else
                state = 2
        }
    }
    else
    {
        if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)))
        {
            hspeed += 0.15
            if keyboard_check(global.lanzar_agarrar)
            {
                if (hspeed > 1.5)
                    hspeed = 1.5
            }
            else if (hspeed > 1)
                hspeed = 1
            direct = 1
        }
        else if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)))
        {
            hspeed += -0.15
            if keyboard_check(global.lanzar_agarrar)
            {
                if (hspeed < -1.5)
                    hspeed = -1.5
            }
            else if (hspeed < -1)
                hspeed = -1
            direct = -1
        }
        else
            hspeed = 0
        if (keyboard_check(global.arriba) && (!keyboard_check(global.abajo)))
        {
            if (!collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, (bbox_top - 1), obj_solid, 0, 0))
            {
                if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_climb, 0, 0))
                    vspeed = 0
                else
                {
                    vspeed += -0.15
                    if keyboard_check(global.lanzar_agarrar)
                    {
                        if (vspeed < -1.5)
                            vspeed = -1.5
                    }
                    else if (vspeed < -1)
                        vspeed = -1
                }
            }
        }
        else if (keyboard_check(global.abajo) && (!keyboard_check(global.arriba)))
        {
            vspeed += 0.15
            if keyboard_check(global.lanzar_agarrar)
            {
                if (vspeed > 1.5)
                    vspeed = 1.5
            }
            else if (vspeed > 1)
                vspeed = 1
            if (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0))
            {
                state = 0
                jumpnow = 0
            }
        }
        else
            vspeed = 0
        if (keyboard_check_pressed(global.saltar) || keyboard_check_pressed(global.saltar_spin))
        {
            if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0))))))
                vspeed = -1.8
            else
                vspeed = -3.75
            audio_play_sound(scr_jump(), 0, false)
            jumpnow = 1
            state = 2
        }
        if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climb, 0, 0))
            state = 2
    }
}
else
    speed = 0


if (state != 3)
{
    if (keyboard_check(global.saltar) || keyboard_check(global.saltar_spin))
        jumpnow = 1
    else
        jumpnow = 2
    state = 2
    alarm[4] = 15
    if ((!collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solid, 1, 0)) && ((!collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_pinchos, 1, 0)) && ((!collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0)) && (!collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_muncher, 1, 0)))))
    {
        if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0))))))
            vspeed = -2.625
        else
            vspeed = -4
        y--
    }
    if ((obj_levelmanager.pmeter > 5) && (global.powerup == -39))
    {
        with (obj_levelmanager)
            alarm[8] = 300
    }
    airspin = 0
    airspin_count = 0
    groundpount = 0
}


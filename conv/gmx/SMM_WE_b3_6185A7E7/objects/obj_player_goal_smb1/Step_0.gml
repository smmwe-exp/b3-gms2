if (global.powerup == 0)
    mask_index = spr_smallmask
else if (global.powerup == -77)
    mask_index = spr_megamask
else
    mask_index = spr_bigmask
if ((global.bg_level == "underwater") || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))
    swim = 1
anim += (0.065 + (abs(hspeed) / 7.5))
if ((ready == 2) || (ready == 3))
{
    if (bbox_top > room_height)
    {
        y = (room_height - 64)
        visible = 0
    }
    event_inherited()
    if (ready == 2)
    {
        if (hspeed < 0)
        {
            ready = 3
            event_user(15)
            hspeed = 0
        }
        else if (ready2 != 1)
        {
            if (swimming == 1)
                hspeed = 0.5
            else
                hspeed = 1.5
        }
    }
}
if (out_view == 1)
{
    hspeed = 0
    vspeed = 0
    gravity = 0
}
if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0) || (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0) || (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_muncher, 0, 0) || collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0))))
    in_solid = 1
event_user(13)


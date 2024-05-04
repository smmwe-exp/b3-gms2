var col_oneway_left, col_oneway_right;
col_oneway_left = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate, 0, 0)
col_oneway_right = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate, 0, 0)
if (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 3), (bbox_bottom - 4), obj_solid, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 3), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_solid, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 3), (bbox_bottom - 4), obj_enemyparent_held, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 3), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_enemyparent_held, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 3), (bbox_bottom - 4), obj_muncher, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 3), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_muncher, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 3), (bbox_bottom - 4), obj_pinchos, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 3), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_pinchos, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 3), (bbox_bottom - 4), obj_block_pow_hold, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 3), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 3), (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 3), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 3), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 3), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)) || (((hspeed > 0) && (col_oneway_left && (col_oneway_left.c_direct == 2))) || ((hspeed < 0) && (col_oneway_right && (col_oneway_right.c_direct == 0))))))))))))))))))
{
    if ((aplastar == 1) && (aplastar2 == 0))
    {
        hspeed = 0
        vspeed = 0
    }
    else
        hspeed = (-hspeed)
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_solid, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_muncher, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_onewaygate_left, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0)
        x++
}


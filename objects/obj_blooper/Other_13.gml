if (((hspeed < 0) && collision_rectangle((bbox_left - 1.5), (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_solid, 1, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1.5), (bbox_bottom - 8), obj_solid, 1, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_muncher, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_muncher, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_pinchos, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_pinchos, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_block_pow_hold, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)) || ((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)))))))))))))
{
    hspeed = 0
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_solid, 1, 0)
        x += 1.5
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 8), obj_solid, 1, 0)
        x -= 1.5
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_block_pow_hold, 1, 0)
        x += 1.5
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 8), obj_block_pow_hold, 1, 0)
        x -= 1.5
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_muncher, 1, 0)
        x += 1.5
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 8), obj_muncher, 1, 0)
        x -= 1.5
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_pinchos, 1, 0)
        x += 1.5
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 8), obj_pinchos, 1, 0)
        x -= 1.5
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_onewaygate_left, 1, 0)
        x += 1.5
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 8), obj_onewaygate_left, 1, 0)
        x -= 1.5
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_bullebill_base, 1, 0)
        x += 1.5
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 8), obj_bullebill_base, 1, 0)
        x -= 1.5
}

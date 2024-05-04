var semisolid, solidpow, solidthwomp;
if (vspeed >= 0)
{
    semisolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    solidpow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0)
    solidthwomp = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp, 0, 0)
    if (semisolid && ((bbox_bottom < (semisolid.yprevious + 5)) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0))))
        y = (semisolid.bbox_top - 16)
    if (solidpow && ((bbox_bottom < (solidpow.yprevious + 5)) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0))))
        y = (solidpow.bbox_top - 16)
    if (solidthwomp && ((bbox_bottom < (solidthwomp.yprevious + 5)) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0))))
        y = (solidthwomp.bbox_top - 16)
}
if (collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0) && ((!collision_rectangle((x - 1), (bbox_bottom - 4), (x + 1), (bbox_bottom - 4), obj_slopeparent, 1, 0)) && (vspeed == 0)))
{
    if (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 5), obj_solidtop, 0, 0))
        y += 4
}
if ((vspeed > -0.85) && (collision_rectangle((x - 1), (bbox_bottom - 4), (x + 1), bbox_bottom, obj_slopeparent, 1, 0) && (!collision_rectangle((x - 1), (bbox_bottom - 8), (x + 1), (bbox_bottom - 8), obj_slopeparent, 1, 0))))
{
    while collision_rectangle((x - 1), (bbox_bottom - 4), (x + 1), bbox_bottom, obj_slopeparent, 1, 0)
        y--
}
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 0))) || collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0))))
{
    gravity = 0
    if (vspeed > 0.5)
    {
        hspeed /= 2
        vspeed = ((-vspeed) / 2)
    }
    else if ((vspeed > 0) && (vspeed <= 0.5))
        vspeed = 0
}
else if (!swimming)
{
    gravity = 0.2
    if (vspeed > 4)
        vspeed = 4
}
else
{
    gravity = 0.03
    if (vspeed > 0.5)
        vspeed = 0.5
}
if ((vspeed < 0) && (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_solid, 1, 0) || (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_pinchos, 1, 0) || (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_bullebill_base, 1, 0) || (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_cannon, 1, 0) || collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_muncher, 1, 0))))))
{
    while collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_solid, 1, 0)
        y++
    vspeed = 0
}
if (vspeed >= 0)
{
    while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, bbox_bottom, obj_solidtop, 0, 0) || collision_rectangle((x - 1), bbox_top, (x + 1), (bbox_bottom - 4), obj_slopeparent, 1, 0))
        y--
}


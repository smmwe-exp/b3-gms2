var semisolid, solidpow, solidthwomp, solidmuncher, solidpinchos, lava_lift, check, plataforma, check_pinchos, check_solid, check_oneway, check_cannon, check_bullet, check_muncher;
if (vspeed >= 0)
{
    semisolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    solidpow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0)
    solidthwomp = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp, 0, 0)
    solidmuncher = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_muncher, 0, 0)
    solidpinchos = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0)
    if (semisolid && ((bbox_bottom < (semisolid.yprevious + 5)) && ((obj_levelmanager.editor == 0) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0)))))
        y = (semisolid.bbox_top - 16)
    if (solidmuncher && ((bbox_bottom < (solidmuncher.yprevious + 5)) && ((obj_levelmanager.editor == 0) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0)))))
        y = (solidmuncher.bbox_top - 16)
    if (solidpinchos && ((bbox_bottom < (solidpinchos.yprevious + 5)) && ((obj_levelmanager.editor == 0) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0)))))
        y = (solidpinchos.bbox_top - 16)
    if (solidpow && ((bbox_bottom < (solidpow.yprevious + 5)) && ((obj_levelmanager.editor == 0) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0)))))
        y = (solidpow.bbox_top - 16)
    if (solidthwomp && ((bbox_bottom < (solidthwomp.yprevious + 5)) && ((obj_levelmanager.editor == 0) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0)))))
        y = (solidthwomp.bbox_top - 16)
}
if (collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0) && ((!collision_rectangle((x - 1), (bbox_bottom - 4), (x + 1), (bbox_bottom - 4), obj_slopeparent, 1, 0)) && (vspeed == 0)))
{
    if (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 5), obj_solidtop, 0, 0))
        y += 4
}
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_muncher, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 0))) || collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0))))))
{
    gravity = 0
    if (hspeed == 0)
        hspeed = (1 * sign(direct_spike))
    if (vspeed > 0.5)
        vspeed = ((-vspeed) / 2)
    else if ((vspeed > 0) && (vspeed <= 0.5))
        vspeed = 0
}
else if (modo_lava == 1)
{
    hspeed = 0
    gravity = 0.02
    if (vspeed > 0.03)
        vspeed = 0.03
}
else if (!swimming)
{
    gravity = 0.2
    if (vspeed > 3.2)
        vspeed = 3.2
}
else if (swimming == 1)
{
    gravity = 0.03
    if (vspeed > 0.5)
        vspeed = 0.5
}
if ((vspeed < 0) && (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_solid, 1, 0) || (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_cannon, 1, 0) || (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_bullebill_base, 1, 0) || (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_pinchos, 1, 0) || collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_muncher, 1, 0))))))
{
    while collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_solid, 1, 0)
        y++
    vspeed = 0
    gravity = 0
}
lava_lift = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 2), obj_lava_lift, 0, 0)
if (lava_lift && ((y < (lava_lift.y - 12)) && (vspeed == 0)))
{
    check = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0)
    if (check && (check != lava_lift))
        exit
    if (lava_lift.vspeed == 0)
        y = ceil((lava_lift.bbox_top - 16))
    else
        y = ceil((lava_lift.bbox_top - (16 - vspeed)))
    if (((lava_lift.hspeed > 0) && (!collision_rectangle((bbox_right + lava_lift.hspeed), bbox_top, (bbox_right + lava_lift.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle((bbox_right + lava_lift.hspeed), bbox_top, (bbox_right + lava_lift.hspeed), (bbox_bottom - 1), obj_pinchos, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle((bbox_right + lava_lift.hspeed), bbox_top, (bbox_right + lava_lift.hspeed), (bbox_bottom - 1), obj_cannon, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle((bbox_right + lava_lift.hspeed), bbox_top, (bbox_right + lava_lift.hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle((bbox_right + lava_lift.hspeed), bbox_top, (bbox_right + lava_lift.hspeed), (bbox_bottom - 1), obj_muncher, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle((bbox_left + lava_lift.hspeed), bbox_top, (bbox_left + lava_lift.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle((bbox_left + lava_lift.hspeed), bbox_top, (bbox_left + lava_lift.hspeed), (bbox_bottom - 1), obj_pinchos, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle((bbox_left + lava_lift.hspeed), bbox_top, (bbox_left + lava_lift.hspeed), (bbox_bottom - 1), obj_cannon, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle((bbox_left + lava_lift.hspeed), bbox_top, (bbox_left + lava_lift.hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))) || ((lava_lift.hspeed < 0) && (!collision_rectangle((bbox_left + lava_lift.hspeed), bbox_top, (bbox_left + lava_lift.hspeed), (bbox_bottom - 1), obj_muncher, 0, 0))))))))))))
        x += lava_lift.hspeed
}
plataforma = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 2), obj_plataforma, 0, 0)
if (plataforma && ((y < (plataforma.y - 12)) && (vspeed == 0)))
{
    check = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0)
    check_pinchos = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0)
    check_solid = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solid, 0, 0)
    check_oneway = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_onewaygate_bottom, 0, 0)
    check_cannon = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_cannon, 0, 0)
    check_bullet = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_bullebill_base, 0, 0)
    check_muncher = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0)
    if (((check || check_pinchos) && (plataforma.vspeed > 0)) || ((check_solid || (check_oneway || (check_cannon || (check_bullet || check_muncher)))) && (plataforma.vspeed < 0)))
        exit
    if (plataforma.vspeed == 0)
        y = ceil((plataforma.bbox_top - 16))
    else
        y = ceil((plataforma.bbox_top - (16 - vspeed)))
    if (((plataforma.hspeed > 0) && (!collision_rectangle((bbox_right + plataforma.hspeed), bbox_top, (bbox_right + plataforma.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))) || (((plataforma.hspeed > 0) && (!collision_rectangle((bbox_right + plataforma.hspeed), bbox_top, (bbox_right + plataforma.hspeed), (bbox_bottom - 1), obj_pinchos, 0, 0))) || (((plataforma.hspeed > 0) && (!collision_rectangle((bbox_right + plataforma.hspeed), bbox_top, (bbox_right + plataforma.hspeed), (bbox_bottom - 1), obj_cannon, 0, 0))) || (((plataforma.hspeed > 0) && (!collision_rectangle((bbox_right + plataforma.hspeed), bbox_top, (bbox_right + plataforma.hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))) || (((plataforma.hspeed > 0) && (!collision_rectangle((bbox_right + plataforma.hspeed), bbox_top, (bbox_right + plataforma.hspeed), (bbox_bottom - 1), obj_muncher, 0, 0))) || (((plataforma.hspeed < 0) && (!collision_rectangle((bbox_left + plataforma.hspeed), bbox_top, (bbox_left + plataforma.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))) || (((plataforma.hspeed < 0) && (!collision_rectangle((bbox_left + plataforma.hspeed), bbox_top, (bbox_left + plataforma.hspeed), (bbox_bottom - 1), obj_pinchos, 0, 0))) || (((plataforma.hspeed < 0) && (!collision_rectangle((bbox_left + plataforma.hspeed), bbox_top, (bbox_left + plataforma.hspeed), (bbox_bottom - 1), obj_cannon, 0, 0))) || (((plataforma.hspeed < 0) && (!collision_rectangle((bbox_left + plataforma.hspeed), bbox_top, (bbox_left + plataforma.hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))) || ((plataforma.hspeed < 0) && (!collision_rectangle((bbox_left + plataforma.hspeed), bbox_top, (bbox_left + plataforma.hspeed), (bbox_bottom - 1), obj_muncher, 0, 0))))))))))))
        x += plataforma.hspeed
}


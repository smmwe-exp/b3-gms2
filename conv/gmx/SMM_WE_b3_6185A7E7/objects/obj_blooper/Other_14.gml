var semisolid, semithwomp, semipinchos;
if (vspeed >= 0)
{
    semisolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    semithwomp = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp, 0, 0)
    semipinchos = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0)
    if (semisolid && ((bbox_bottom < (semisolid.yprevious + 5)) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0))))
        y = (semisolid.bbox_top - 16)
    if (semithwomp && ((bbox_bottom < (semithwomp.yprevious + 5)) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0))))
        y = (semithwomp.bbox_top - 16)
    if (semipinchos && ((bbox_bottom < (semipinchos.yprevious + 5)) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0))))
        y = (semipinchos.bbox_top - 16)
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
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (((!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0)) && (((!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 0)) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0))))) || collision_rectangle((x - 1), (bbox_bottom + 1), (x + 1), (bbox_bottom + 1), obj_slopeparent, 1, 0))
{
    gravity = 0
    if (vspeed > 0)
        vspeed = 0
}
else if (ready == 0)
    gravity = 0.05
if ((vspeed < 0) && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_pinchos, 1, (0 || (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_bullebill_base, 1, 0) || (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_cannon, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_muncher, 1, 0))))))))
{
    while collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_solid, 1, 0)
        y++
    vspeed = 0
}


var solidtop, solidpow, solidthwomp, solidmuncher, pinchos;
if (vspeed > 0)
{
    solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    solidpow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0)
    solidthwomp = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp, 0, 0)
    solidmuncher = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_muncher, 0, 0)
    pinchos = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0)
    if (solidtop && ((bbox_bottom < (solidtop.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidtop.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidpow && ((bbox_bottom < (solidpow.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidpow.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidmuncher && ((bbox_bottom < (solidmuncher.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidmuncher.y + floor(((y - bbox_bottom) - 0.9)))
    if (pinchos && (bbox_bottom < (pinchos.yprevious + 5)))
        y = (pinchos.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidthwomp && ((bbox_bottom < (solidthwomp.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidthwomp.y + floor(((y - bbox_bottom) - 16)))
    if (vspeed > 4)
        vspeed = 4
}
if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 4), obj_slopeparent, 1, 0) && ((!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_slopeparent, 1, 0)) && (vspeed == 0)))
    y += 4
if (collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, bbox_bottom, obj_slopeparent, 1, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 8), bbox_right, (bbox_bottom - 8), obj_slopeparent, 1, 0)))
{
    while collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, bbox_bottom, obj_slopeparent, 1, 0)
        y--
}
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_muncher, 0, 0))) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0))))))
{
    gravity = 0
    if (vspeed >= 0)
    {
        if ((!collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0)) || (!collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
            vspeed = -0.5
        else
            vspeed = 0
    }
}
else if (inmario == 0)
{
    gravity = 0.02
    if (vspeed > 0.5)
        vspeed = 0.5
}
else
{
    gravity = 0.02
    if (vspeed > 0.5)
        vspeed = 0.5
}
if (inmario == 0)
{
    if ((vspeed < 0) && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
    {
        while (collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_solid, 1, 0) && ((!collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_noteblock, 1, 0)) && (!collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_musicblock, 1, 0))))
            y++
        vspeed = 0
    }
}
else if (global.powerup == 0)
{
    if ((vspeed < 0) && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 12), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 12), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
    {
        while (collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_solid, 1, 0) && ((!collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_noteblock, 1, 0)) && (!collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_musicblock, 1, 0))))
            y++
        vspeed = 0
    }
}
else if ((vspeed < 0) && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 18), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 18), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
{
    while (collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_solid, 1, 0) && ((!collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_noteblock, 1, 0)) && (!collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_musicblock, 1, 0))))
        y++
    vspeed = 0
}
if (bbox_top > (room_height + 46))
    instance_destroy()


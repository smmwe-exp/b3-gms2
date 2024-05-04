var solidtop, solidnube, solidblock, solidblockrock, solidblockice, solidpow, solidthwomp;
if (vspeed >= 0)
{
    solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    solidnube = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_nube, 0, 0)
    solidblock = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_blockparent, 0, 0)
    solidblockrock = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_rock, 0, 0)
    solidblockice = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_ice, 0, 0)
    solidpow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0)
    solidthwomp = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp, 0, 0)
    if (solidtop && ((!solidnube) && ((!solidpow) && ((!solidblock) && ((!solidblockrock) && ((!solidblockice) && ((bbox_bottom < (solidtop.yprevious + 5)) && (obj_levelmanager.editor == 0))))))))
        y = (solidtop.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidthwomp && ((bbox_bottom < (solidthwomp.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidthwomp.y + floor(((y - bbox_bottom) - 0.9)))
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
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && ((!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_blockparent, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_nube, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_rock, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_ice, 0, 0)))))))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 0))) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0)))
{
    gravity = 0
    if (vspeed > 0)
    {
        vspeed = 0
        paracaidas = 0
        speed_max = 0
    }
}
else if ((y >= (room_height - 24)) && ((global.bg_level == "castle") && (obj_levelmanager.editor == 0)))
{
    hspeed = 0
    gravity = 0.02
    if (vspeed > 0.1)
        vspeed = 0.1
}
else if (!swimming)
{
    if ((wings == 1) && (paracaidas == 0))
    {
        gravity = 0.3
        if (vspeed > 5)
            vspeed = 5
    }
    else if (paracaidas == 1)
    {
        gravity = 0.3
        if ((vspeed > 3) && (speed_max == 0))
        {
            vspeed = 0
            gravity = 0
            speed_max = 1
        }
        else if ((vspeed > 1) && (speed_max == 1))
            vspeed = 1
    }
    else
    {
        gravity = 0.2
        if (vspeed > 4)
            vspeed = 4
    }
}
else if (swimming == 1)
{
    if ((wings == 1) && (paracaidas == 0))
    {
        gravity = 0.15
        if (vspeed > 0.6)
            vspeed = 0.6
    }
    else if (paracaidas == 1)
    {
        gravity = 0.15
        if ((vspeed > 0.4) && (speed_max == 0))
        {
            vspeed = -1
            speed_max = 1
        }
        else if ((vspeed > 0.4) && (speed_max == 1))
            vspeed = 0.4
    }
    else
    {
        gravity = 0.1
        if (vspeed > 0.6)
            vspeed = 0.6
    }
}
if ((vspeed < 0) && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
{
    ready = 0
    gravity = 0
    vspeed = 0
    ystart = y
    image_index = 0
    image_xscale = 1
}
if (((bbox_top - 16) > room_height) && (obj_levelmanager.editor == 0))
    instance_destroy()


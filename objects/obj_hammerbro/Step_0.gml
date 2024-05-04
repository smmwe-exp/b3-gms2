if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (instance_exists(obj_lava_water) && (((y + 8) > obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    swimming = 1
else
    swimming = 0
if ((vspeed == 0) && ((hspeed <= 0) && ((x <= (xstart - 16)) && (paracaidas == 0))))
{
    if (swimming == 1)
        hspeed = 0.2
    else
        hspeed = 0.4
}
else if ((vspeed == 0) && ((hspeed >= 0) && ((x >= (xstart + 16)) && (paracaidas == 0))))
{
    if (swimming == 1)
        hspeed = -0.2
    else
        hspeed = -0.4
}
if ((global.bg_level == "underwater") || ((global.bg_level == "sky") && (global.modo_noche == 1)))
{
    if (hspeed > 0.3)
    {
        hspeed -= 0.08
        if (hspeed <= 0.3)
            hspeed = 0.3
    }
    else if (hspeed < -0.3)
    {
        hspeed += 0.08
        if (hspeed >= -0.3)
            hspeed = -0.3
    }
}
else if (hspeed > 0.4)
{
    hspeed -= 0.08
    if (hspeed <= 0.4)
        hspeed = 0.4
}
else if (hspeed < -0.4)
{
    hspeed += 0.08
    if (hspeed >= -0.4)
        hspeed = -0.4
}
if (throughsolid == 0)
{
    event_user(3)
    event_user(4)
}
else if (swimming == 1)
{
    gravity = 0.15
    if (vspeed > 0.4)
    {
        vspeed = 0.4
        gravity = 0
    }
}
else
{
    gravity = 0.25
    if (vspeed > 4)
    {
        vspeed = 4
        gravity = 0
    }
}
if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
    direct = -1
else
    direct = 1
if ((wings == 1) && (!instance_exists(obj_deadmario)))
{
    if (gravity > 0)
        wings_anim += 0.18
    else
        wings_anim += 0.12
}
if (paracaidas == 1)
{
    direct = -1
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
    if (gravity == 0)
    {
        instance_create((x + (3 * direct)), y, obj_paracaidas_go)
        paracaidas = 0
        hspeed = 0
        alarm[10] = 10
    }
}


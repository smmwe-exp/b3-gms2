if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    swimming = 1
else
    swimming = 0
if ((instance_exists(obj_lava_water) && ((y > obj_lava_water.y) && (global.bg_level == "castle"))) || (instance_exists(obj_lava_water) && ((y > obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 1)))))
{
    with (instance_create(x, y, obj_smoke))
        depth = -10
    instance_destroy()
}
if ((wings == 0) || (paracaidas == 1))
{
    event_user(3)
    event_user(4)
}
if (paracaidas == 1)
{
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
        instance_create((x + 8), y, obj_paracaidas_go)
        paracaidas = 0
        ystart = (y - 32)
        y++
        hspeed = 0
        alarm[10] = 10
    }
}
if ((wings == 1) && (paracaidas == 0))
{
    wings_anim += 0.12
    if (y > (ystart + 16))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.085
    }
    else if (y < (ystart - 16))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.085
    }
}


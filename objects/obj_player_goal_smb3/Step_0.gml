event_inherited()
if ((global.bg_level == "underwater") || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))
    swim = 1
anim += 0.2
if (gravity == 0)
{
    if (swimming == 1)
    {
        hspeed += 0.1
        if (hspeed > 0.6)
            hspeed = 0.6
    }
    else
    {
        hspeed += 0.08
        if (hspeed > 1.6)
            hspeed = 1.6
    }
}
if (ready == 1)
{
    hspeed = 0
    vspeed = 0
    gravity = 0
}


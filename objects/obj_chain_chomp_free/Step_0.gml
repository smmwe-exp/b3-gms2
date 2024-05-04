if instance_exists(obj_mario_transform2)
    depth = -5
else
    depth = -7
event_inherited()
if (fallow_chomp == 1)
{
    oldx[0] = x
    oldy[0] = (y + 8)
    for (i = amount_previous; i > 0; i -= 1)
    {
        oldx[i] = oldx[(i - 1)]
        oldy[i] = oldy[(i - 1)]
    }
}
if (gravity == 0)
{
    if ((global.bg_level == "underwater") || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 4)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
        vspeed = -1.5
    else
        vspeed = -2
    y--
}
else
    gravity = 0.125


if (cap != 0)
{
    if instance_exists(obj_cap_mario)
    {
        with (obj_cap_mario)
            visible = 1
    }
}
if (c_powerup == 1)
    global.powerup = powerup_nuevo
alarm[3] = 7


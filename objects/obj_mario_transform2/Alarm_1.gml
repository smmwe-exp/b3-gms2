if (cap != 0)
{
    if instance_exists(obj_cap_mario)
    {
        with (obj_cap_mario)
            visible = 0
    }
}
if (c_powerup == 1)
    global.powerup = powerup_actual
alarm[2] = 7


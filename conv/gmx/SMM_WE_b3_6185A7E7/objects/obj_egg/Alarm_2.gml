if ((global.apariencia == 0) || (global.apariencia == 1))
{
    anim++
    alarm[2] = 7
}
else if (global.apariencia == 2)
{
    if ((instance_number(obj_yoshi_abandon) < 2) && (instance_number(obj_egg_hatch) < 2))
        instance_create((x + 8), (y - 16), obj_egg_hatch)
    instance_destroy()
}


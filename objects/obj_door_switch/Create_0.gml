if (global.apariencia == 0)
{
    s_door_switch_outline = 566
    s_door_switch = 567
    s_door_switch_close = 568
}
else if (global.apariencia == 1)
{
    s_door_switch_outline = 1281
    s_door_switch = 1282
    s_door_switch_close = 1283
}
else if (global.apariencia == 2)
{
    s_door_switch_outline = 2182
    s_door_switch = 2183
    s_door_switch_close = 2184
}
else if (global.apariencia == 3)
{
    s_door_switch_outline = 2182
    s_door_switch = 2183
    s_door_switch_close = 2184
}
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
    {
        s_door_switch_outline = 3708
        s_door_switch = 3711
        s_door_switch_close = 3712
    }
    else
    {
        s_door_switch_outline = 3708
        s_door_switch = 3709
        s_door_switch_close = 3710
    }
}
else
{
    s_door_switch_outline = 566
    s_door_switch = 567
    s_door_switch_close = 568
}
image_speed = 0
posx = (x + 16)
posy = y
doorexit = 0
back = -4
time_blow = 0
alarm[2] = 1


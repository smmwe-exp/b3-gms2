if (global.apariencia == 0)
{
    s_doorlock_anim = 569
    s_doorlock_unlock = 570
    s_doorlock_unlock_close = 571
}
else if (global.apariencia == 1)
{
    s_doorlock_anim = 1286
    s_doorlock_unlock = 1287
    s_doorlock_unlock_close = 1288
}
else if (global.apariencia == 2)
{
    s_doorlock_anim = 2187
    s_doorlock_unlock = 2188
    s_doorlock_unlock_close = 2189
}
else if (global.apariencia == 3)
{
    s_doorlock_anim = 2187
    s_doorlock_unlock = 2188
    s_doorlock_unlock_close = 2189
}
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
    {
        s_doorlock_anim = 3717
        s_doorlock_unlock = 3718
        s_doorlock_unlock_close = 3719
    }
    else
    {
        s_doorlock_anim = 3714
        s_doorlock_unlock = 3715
        s_doorlock_unlock_close = 3716
    }
}
else
{
    s_doorlock_anim = 569
    s_doorlock_unlock = 570
    s_doorlock_unlock_close = 571
}
image_speed = 0
image_index = 0
returndoor = 0
rotacion = 0
rot = 0
up = 0
rot_angle = 0
lock = 1
back = -4


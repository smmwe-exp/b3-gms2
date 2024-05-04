if (y < (__view_get( e__VW.YView, 0 ) + 100))
{
    y = (__view_get( e__VW.YView, 0 ) + 108)
    if (vspeed < 0)
    {
        vspeed = 0
        updown = 0
    }
}
else if (y > ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) - 100))
{
    y = ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) - 108)
    if (vspeed > 0)
    {
        vspeed = 0
        updown = 0
    }
}
if ((y < (obj_mario.y + 48)) && (vspeed < 0))
{
    updown = 0
    vspeed = 0
}
else if ((y > (obj_mario.y + 4)) && (vspeed > 0))
{
    updown = 0
    vspeed = 0
}
if (obj_mario.y < (__view_get( e__VW.YView, 0 ) + 32))
    updown = 1
else if (obj_mario.y >= (__view_get( e__VW.YView, 0 ) + 124))
    updown = 2
if (updown == 1)
{
    if (obj_mario.vspeed < -3)
        vspeed -= 0.4
    else
        vspeed -= 0.05
    if (vspeed < -3.5)
        vspeed = -3.5
}
else if (updown == 2)
{
    if (obj_mario.vspeed > 2)
        vspeed += 0.4
    else
        vspeed += 0.05
    if (vspeed > 4)
        vspeed = 4
}
direct_x = 0
direct_y = 0


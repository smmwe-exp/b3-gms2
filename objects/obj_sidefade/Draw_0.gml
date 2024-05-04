var x1, x2, y1, y2;
draw_set_color(c_black)
x1 = (__view_get( e__VW.XView, 0 ) + left)
x2 = (__view_get( e__VW.XView, 0 ) + right)
y1 = __view_get( e__VW.YView, 0 )
y2 = (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
right += 15
left += (15 * stagetwo)
draw_rectangle(x1, y1, x2, y2, 0)
if ((right > (__view_get( e__VW.WView, 0 ) + 50)) && (!stagetwo))
{
    stagetwo = 1
    room_goto(goal)
}
if (left > (__view_get( e__VW.WView, 0 ) + 50))
    instance_destroy()


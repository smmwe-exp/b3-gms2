if background_exists(back)
{
    draw_enable_alphablend(0)
    draw_background(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
    draw_enable_alphablend(1)
}
draw_sprite_ext(spr_screenmask, -1, (__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2)), __view_get( e__VW.YView, 0 ), 1.5, 1.5, 0, c_black, alpha)


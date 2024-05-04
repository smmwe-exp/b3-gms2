if (image_index == 1)
{
    draw_self()
    draw_sprite(spr_super_experto, 0, (__view_get( e__VW.XView, 0 ) + 121), (__view_get( e__VW.YView, 0 ) + 101))
}
else
    draw_sprite_ext(sprite_index, image_index, round(x), y, 1, 1, 0, c_white, 0.6)


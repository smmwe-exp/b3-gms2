if (y > (__view_get( e__VW.YView, 0 ) + 32))
{
    draw_sprite_ext(sprite_index, 0, round(x), round(y), scale, scale, 0, c_white, 1)
    if (fade > 0)
        draw_sprite_ext(sprite_index, 1, round(x), round(y), 1, 1, 0, c_white, fade)
}
else
{
    draw_sprite_ext(sprite_index, 0, round(x), round((__view_get( e__VW.YView, 0 ) + 32)), scale, scale, 0, c_white, 1)
    if (fade > 0)
        draw_sprite_ext(sprite_index, 1, round(x), round((__view_get( e__VW.YView, 0 ) + 32)), 1, 1, 0, c_white, fade)
}


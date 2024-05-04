draw_self()
if (draw_lives == 1)
{
    draw_set_font(global.numbers_lives)
    draw_sprite(spr_lives_x, 0, (__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 135))
    draw_text((__view_get( e__VW.XView, 0 ) + 205), (__view_get( e__VW.YView, 0 ) + 119), string_hash_to_newline(string_add_zeros(lives, 2)))
}


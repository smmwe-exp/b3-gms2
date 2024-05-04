if (global.pink_coins_total == 1)
    s_pink_coins = spr_pinkcoin_hub1
else if (global.pink_coins_total == 2)
    s_pink_coins = spr_pinkcoin_hub2
else if (global.pink_coins_total == 3)
    s_pink_coins = spr_pinkcoin_hub3
else if (global.pink_coins_total == 4)
    s_pink_coins = spr_pinkcoin_hub4
else if (global.pink_coins_total == 5)
    s_pink_coins = spr_pinkcoin_hub5
else if (global.pink_coins_total == 6)
    s_pink_coins = spr_pinkcoin_hub6
else if (global.pink_coins_total == 7)
    s_pink_coins = spr_pinkcoin_hub7
else if (global.pink_coins_total == 8)
    s_pink_coins = spr_pinkcoin_hub8
else if (global.pink_coins_total == 9)
    s_pink_coins = spr_pinkcoin_hub9
else if (global.pink_coins_total == 10)
    s_pink_coins = spr_pinkcoin_hub10
draw_set_font(global.wdigits_NSMBU_coins)
s_coinhud = spr_NSMBU_coinhud
s_timehud = spr_NSMBU_timehud
s_player_lives = spr_player_lives
draw_set_colour(c_white)
draw_set_alpha(1)
if ((lives == 0) || (room == rm_editor))
{
    draw_sprite_ext(s_coinhud, 0, (__view_get( e__VW.XView, 0 ) + 13), (__view_get( e__VW.YView, 0 ) + 9), 1, 1, 0, c_white, 1)
    draw_text((__view_get( e__VW.XView, 0 ) + 25), (__view_get( e__VW.YView, 0 ) + 9), string_hash_to_newline(string_add_zeros(global.coins, 2)))
}
else
{
    draw_sprite_ext(s_player_lives, global.jugador, (__view_get( e__VW.XView, 0 ) + 11), (__view_get( e__VW.YView, 0 ) + 6), 1, 1, 0, c_white, 1)
    draw_text((__view_get( e__VW.XView, 0 ) + 36), (__view_get( e__VW.YView, 0 ) + 11), string_hash_to_newline(string_add_zeros(lives, 3)))
    draw_sprite_ext(spr_cont_lives, global.liveleves, (__view_get( e__VW.XView, 0 ) + 68), (__view_get( e__VW.YView, 0 ) + 8), 1, 1, 0, c_white, 1)
    draw_sprite_ext(s_coinhud, 0, (__view_get( e__VW.XView, 0 ) + 15), (__view_get( e__VW.YView, 0 ) + 25), 1, 1, 0, c_white, 1)
    draw_text((__view_get( e__VW.XView, 0 ) + 36), (__view_get( e__VW.YView, 0 ) + 25), string_hash_to_newline(string_add_zeros(global.coins, 2)))
}
draw_set_font(global.wdigits_NSMBU)
draw_text((__view_get( e__VW.XView, 0 ) + 259), (__view_get( e__VW.YView, 0 ) + 9), string_hash_to_newline(string_add_zeros(score, 9)))
draw_sprite_ext(s_timehud, 0, (__view_get( e__VW.XView, 0 ) + 336), (__view_get( e__VW.YView, 0 ) + 9), 1, 1, 0, c_white, 1)
draw_text((__view_get( e__VW.XView, 0 ) + 347), (__view_get( e__VW.YView, 0 ) + 9), string_hash_to_newline(string_add_zeros(global.timer, 3)))
if ((global.pink_coins_total != 0) && (pink_coins_draw == 1))
    draw_sprite_ext(s_pink_coins, global.pink_coins, (__view_get( e__VW.XView, 0 ) + 250), (__view_get( e__VW.YView, 0 ) + 24), 1, 1, 0, c_white, 1)
draw_set_alpha(1)


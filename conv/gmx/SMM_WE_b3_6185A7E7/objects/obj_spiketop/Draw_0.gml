if (turn == 0)
    draw_sprite_ext(sprite_index, -1, round(x), round(y), direct, 1, direction, c_white, 1)
else
    draw_sprite_ext(spr_spiketop_turn, (turn - 1), round(x), round(y), direct, 1, direction, c_white, 1)


if (vspeed > 0)
    draw_sprite_ext(sprite_index, image_index, x, (round(y) + 16), 1, -1, 0, c_white, 1)
else
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)


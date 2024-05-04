if ((enemy == 1) && ((obj != 72) && ((obj != 73) && (obj != 74))))
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), direct, -1, image_angle, c_white, 1)
else if ((enemy == 1) && (obj == 74))
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), (-direct), 1, image_angle, c_white, 1)
else if (hold == 1)
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, 1, image_angle, c_white, 1)
else
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), direct, 1, image_angle, c_white, 1)


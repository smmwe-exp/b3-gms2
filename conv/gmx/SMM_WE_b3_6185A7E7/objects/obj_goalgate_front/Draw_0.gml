if instance_exists(obj_ground3)
    draw_sprite_ext(sprite_index, -1, (obj_ground3.x + 32), (obj_ground3.y - 137), 1, 1, 0, c_white, 1)
else
    draw_sprite_ext(sprite_index, -1, round(x), y, 1, 1, 0, c_white, 1)


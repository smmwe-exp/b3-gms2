if (ready == 0)
    draw_self()
else if (ready == 1)
    draw_sprite_ext(sprite_index, -1, (round(__view_get( e__VW.XView, 0 )) + 64), (round(__view_get( e__VW.YView, 0 )) + 48), 1, 1, 0, c_white, image_alpha)
else if instance_exists(obj_angrysun_movement)
    draw_sprite_ext(sprite_index, -1, (round(__view_get( e__VW.XView, 0 )) + obj_angrysun_movement.x), (round(__view_get( e__VW.YView, 0 )) + obj_angrysun_movement.y), 1, 1, 0, c_white, image_alpha)
else
    draw_self()


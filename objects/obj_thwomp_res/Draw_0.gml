if (obj_levelmanager.editor == 0)
    exit
if (drag == 1)
{
    if (drop_lock == 1)
        draw_sprite_ext(grid_selected, 1, (floor(((mouse_x + calculo_x) / 16)) * 16), (floor(((mouse_y + calculo_y) / 16)) * 16), 1, 1, 0, c_white, 1)
    else
        draw_sprite_ext(grid_selected, 0, (floor(((mouse_x + calculo_x) / 16)) * 16), (floor(((mouse_y + calculo_y) / 16)) * 16), 1, 1, 0, c_white, 1)
}
else if ((mouse_up == 1) && (global.cursor == 0))
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)
if (paracaidas == 1)
    draw_sprite(p_sprite, global.apariencia, (x_draw + para_x), (y_draw - para_y))
draw_sprite_ext(sprite_index, image_index, x_draw, y_draw, s_scalex, s_scaley, 0, c_white, 1)
if (wings == 1)
    draw_sprite(w_sprite, global.apariencia, (x_draw + wings_x), (y_draw - wings_y))
if ((mouse_up == 1) && ((drag == 0) && (global.cursor == 2)))
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)
if (drag == 0)
    draw_sprite_ext(spr_button_change_thwomp, 0, (x + 16), (y + 16), 1, 1, rotacion, c_white, 1)


if (obj_levelmanager.editor == 0)
    exit
if (drag == 1)
{
    if (drop_lock == 1)
        draw_sprite_ext(grid_selected, 1, (floor(((mouse_x + calculo_x) / 16)) * 16), (floor(((mouse_y + calculo_y) / 16)) * 16), image_xscale, image_yscale, 0, c_white, 1)
    else
        draw_sprite_ext(grid_selected, 0, (floor(((mouse_x + calculo_x) / 16)) * 16), (floor(((mouse_y + calculo_y) / 16)) * 16), image_xscale, image_yscale, 0, c_white, 1)
}
else if ((mouse_up == 1) && (global.cursor == 0))
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
if (wings == 1)
{
    draw_sprite_ext(spr_wings_editor, global.apariencia, (x_draw - 8), (y_draw - 20), -1, 1, 0, c_white, 1)
    draw_sprite_ext(spr_wings_editor, global.apariencia, ((x_draw + (size_x * 16)) + 8), (y_draw - 20), 1, 1, 0, c_white, 1)
}
for (h = 0; h < size_x; h++)
{
    if (h == 0)
        index = 0
    else if (h == (size_x - 1))
        index = 2
    else
        index = 1
    draw_sprite(sprite_index, index, (x_draw + (h * 16)), y_draw)
}
if (drag == 0)
{
    if (draw_p == 1)
        draw_sprite_ext(spr_move_puentes, anim, (x + ((16 * size_x) - 16)), y, 1, 1, 0, c_white, 1)
    else if (mouse_up == 1)
        draw_sprite_ext(spr_move_puentes, 0, (x + ((16 * size_x) - 16)), y, 1, 1, 0, c_white, 1)
}
if ((mouse_up == 1) && ((drag == 0) && (global.cursor == 2)))
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)

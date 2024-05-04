if ((global.apariencia == 0) || (global.apariencia == 1))
    num_tile_ancho = 16
else if (global.apariencia == 2)
    num_tile_ancho = 32
num_ancho = ceil((room_width / num_tile_ancho))
for (i = 0; i < num_ancho; i++)
{
    draw_sprite_ext(sprite_index, image_index, (i * num_tile_ancho), y, 1, 1, 0, c_white, 1)
    if (modo_edit_water == 1)
    {
        if (y == obj_water_limit.y)
            draw_sprite(spr_water_draw, 0, (i * num_tile_ancho), y)
        else
            draw_sprite(spr_water_draw, 1, (i * num_tile_ancho), y)
    }
}


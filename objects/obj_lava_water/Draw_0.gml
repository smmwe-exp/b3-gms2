if ((global.bg_level == "forest") && (global.modo_noche == 0))
{
    if ((global.apariencia == 2) || (global.apariencia == 3))
        num_tile_ancho = 32
    else
        num_tile_ancho = 16
}
else
    num_tile_ancho = 16
num_ancho = ceil((room_width / num_tile_ancho))
if instance_exists(obj_water_move)
{
    for (i = 0; i < num_ancho; i++)
        draw_sprite_ext(sprite_index, image_index, (i * num_tile_ancho), obj_water_move.y, 1, 1, 0, c_white, image_alpha)
}
else
{
    for (i = 0; i < num_ancho; i++)
        draw_sprite_ext(sprite_index, image_index, (i * num_tile_ancho), (y - 12), 1, 1, 0, c_white, image_alpha)
}
if (__view_get( e__VW.YView, 0 ) >= (y + 16))
    draw_sprite_ext(img_sprite, img_index, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, image_alpha)
else
    draw_sprite_ext(img_sprite, img_index, __view_get( e__VW.XView, 0 ), (y + 4), 1, 1, 0, c_white, image_alpha)


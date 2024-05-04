draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, c_white, 1)
if ((paracaidas == 1) && (speed_max == 1))
{
    if (direct_t == 1)
        draw_sprite(spr_paracaidas, global.apariencia, x, (y - 16))
    else if (direct_t == 2)
        draw_sprite_ext(spr_paracaidas_h, global.apariencia, (x + 28), y, -1, 1, 0, c_white, 1)
    else if (direct_t == 3)
        draw_sprite_ext(spr_paracaidas_h, global.apariencia, (x - 28), y, 1, 1, 0, c_white, 1)
}


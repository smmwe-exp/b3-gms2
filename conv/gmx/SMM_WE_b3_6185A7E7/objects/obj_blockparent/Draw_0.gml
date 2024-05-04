draw_sprite_ext(sprite_index, image_index, round(x), y, image_xscale, image_yscale, 0, c_white, 1)
if (wings == 1)
{
    if (global.apariencia == 2)
        draw_sprite(sprite_wings, wings_anim, x, y)
    else
        draw_sprite(sprite_wings, wings_anim, (x + 8), y)
}


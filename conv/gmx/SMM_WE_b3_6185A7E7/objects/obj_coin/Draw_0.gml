draw_sprite_ext(sprite_index, image_index, round(x), y, 1, 1, 0, c_white, image_alpha)
if (wings == 1)
{
    if (global.apariencia == 2)
        draw_sprite(sprite_wings, wings_anim, x, y)
    else
        draw_sprite(sprite_wings, wings_anim, (x + 8), y)
}
if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, (x + 8), y, 1, 1, image_angle, c_white, 1)


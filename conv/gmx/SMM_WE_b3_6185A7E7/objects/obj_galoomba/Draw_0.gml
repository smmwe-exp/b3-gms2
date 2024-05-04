draw_sprite_ext(sprite_index, image_index, round(x), y, direct, image_yscale, image_angle, c_white, 1)
if (wings == 1)
{
    if (global.apariencia == 0)
        draw_sprite_ext(spr_SMB_wings_16x16, anim, round(x), y, direct, 1, image_angle, c_white, 1)
    else if (global.apariencia == 1)
        draw_sprite_ext(spr_SMB3_wings2, anim, round(x), y, direct, 1, image_angle, c_white, 1)
    else if (global.apariencia == 2)
        draw_sprite_ext(spr_wings2, anim, round(x), y, direct, 1, image_angle, c_white, 1)
}
if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, x, y, 1, 1, image_angle, c_white, 1)


if (global.apariencia == 0)
{
    if (object_index == obj_egg_red)
        draw_sprite_ext(spr_SMB_kuriboshoe2, anim, round(x), (round(y) + 1), direct, 1, 0, c_white, 1)
    else
        draw_sprite_ext(spr_SMB_kuriboshoe, anim, round(x), (round(y) + 1), direct, 1, 0, c_white, 1)
    if ready
        draw_sprite_ext(sprite_index, -1, x, (round(y) - 15), direct, 1, 0, c_white, 1)
}
else if (global.apariencia == 1)
{
    if (object_index == obj_egg_red)
        draw_sprite_ext(spr_kuriboshoe2, anim, round(x), (round(y) + 1), direct, 1, 0, c_white, 1)
    else
        draw_sprite_ext(spr_kuriboshoe, anim, round(x), (round(y) + 1), direct, 1, 0, c_white, 1)
    if ready
        draw_sprite_ext(sprite_index, -1, x, (round(y) - 15), direct, 1, 0, c_white, 1)
}
else if (global.apariencia == 2)
{
    draw_sprite_ext(sprite_index, -1, (x + 3), (y + 3), 1, 1, 0, c_black, 0.25)
    draw_sprite_ext(sprite_index, -1, round(x), (round(y) + 1), 1, 1, 0, c_white, 1)
    if (wings == 1)
        draw_sprite(spr_wings_items_big, wings_anim, (x - 16), (y - 16))
    if (paracaidas == 1)
        draw_sprite_ext(spr_paracaidas, global.apariencia, x, (y - 16), 1, 1, image_angle, c_white, 1)
}


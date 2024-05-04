var ss, _frame, zz, _sframe;
for (ss = 0; ss <= (size_x - 1); ss++)
{
    _frame = 0
    if (ss == (size_x - 1))
        _frame = 2
    else
        _frame = 1
    if (ss == 0)
        _frame = 0
    draw_sprite_part_ext(global.theme_spritesheet, global.uni_level_style, ((32 + (global.theme_customanim * 208)) + (_frame * 16)), (style * 16), 16, 16, (x + (ss * 16)), y, 1, 1, c_white, 1)
}
for (zz = 1; zz < size_y; zz++)
{
    if (zz == 1)
        _sframe = 0
    else
        _sframe = 1
    draw_sprite_part_ext(global.theme_spritesheet, global.uni_level_style, ((80 + (global.theme_customanim * 208)) + (32 * _sframe)), (style * 16), 16, 16, (((x + (((size_x - 1) / 2) * 16)) - 16) + 8), (y + (zz * 16)), 1, 1, c_white, 1)
    draw_sprite_part_ext(global.theme_spritesheet, global.uni_level_style, ((96 + (global.theme_customanim * 208)) + (32 * _sframe)), (style * 16), 16, 16, ((x + (((size_x - 1) / 2) * 16)) + 8), (y + (zz * 16)), 1, 1, c_white, 1)
}


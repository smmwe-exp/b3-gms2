var cox, coy, _midy, o, i, _hframe, _vframe;
if (style == 2)
{
    cox = 128
    coy = 112
}
else if (style == 1)
{
    cox = 128
    coy = 48
}
else
{
    cox = 80
    coy = 48
}
_midy = 2
for (o = 0; o < size_y; o++)
{
    for (i = 0; i < size_x; i++)
    {
        if (i == 0)
            _hframe = 0
        else if (i == (size_x - 1))
            _hframe = 2
        else
            _hframe = 1
        if (o == 0)
            _vframe = 0
        else if (o == (size_y - 1))
            _vframe = 3
        else
            _vframe = _midy
        draw_sprite_part_ext(global.theme_spritesheet, global.uni_level_style, (((global.theme_customanim * 208) + cox) + (_hframe * 16)), (coy + (_vframe * 16)), 16, 16, (x + (i * 16)), (y + (o * 16)), 1, 1, c_white, image_alpha)
        if (_midy == 1)
            _midy = 2
        else
            _midy = 1
    }
    if (_midy == 1)
        _midy = 2
    else
        _midy = 1
}


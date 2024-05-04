if (selected == 1)
{
    if ((global.idioma == 0) || (global.idioma == 1))
        sprite = 2466
    else if (global.idioma == 2)
        sprite = 2469
    image_index = 1
}
else if (disabled == 1)
{
    if ((global.idioma == 0) || (global.idioma == 1))
        sprite = 2465
    else if (global.idioma == 2)
        sprite = 2468
    image_index = 2
}
else
{
    if ((global.idioma == 0) || (global.idioma == 1))
        sprite = 2464
    else if (global.idioma == 2)
        sprite = 2467
    image_index = 0
}


if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        image_index = 5
    else
        image_index = 4
}
else
    image_index = global.apariencia


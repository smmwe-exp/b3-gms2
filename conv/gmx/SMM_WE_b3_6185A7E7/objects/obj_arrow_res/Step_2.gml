if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        image_index = 4
    else
        image_index = 3
}
else
    image_index = global.apariencia
if (poder_girar == 1)
{
    if (rotacion >= (R + 45))
    {
        rotacion = (R + 45)
        R = rotacion
        poder_girar = 0
    }
    else
        rotacion += 10
}


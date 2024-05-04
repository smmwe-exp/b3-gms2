if ((isflashing == 1) && (global.effect_star == 1))
{
    shader_set(sha_invert)
    if (flashAlpha == 0)
        flashAlpha = 0.5
    if ((state == 3) && (global.apariencia == 0))
    {
        if (direct == 1)
            draw_sprite_ext(sprite_index, image_index, (x - 6), round(y), direct, image_yscale, 0, c_white, 1)
        else
            draw_sprite_ext(sprite_index, image_index, (x + 6), round(y), direct, image_yscale, 0, c_white, 1)
    }
    else if ((stompstyle == 0) && (caped == 0))
        draw_sprite_ext(sprite_index, image_index, (round(x) + shake), round(y), direct, image_yscale, 0, c_white, 1)
    else if (sprite_index == scr_mariowarp())
        draw_sprite_ext(sprite_index, image_index, (round(x) + shake), round(y), image_yscale, 1, 0, c_white, 1)
}
else if ((state == 3) && (global.apariencia == 0))
{
    if (direct == 1)
        draw_sprite_ext(sprite_index, image_index, (x - 6), y, direct, image_yscale, 0, c_white, 1)
    else
        draw_sprite_ext(sprite_index, image_index, (x + 6), y, direct, image_yscale, 0, c_white, 1)
}
else if ((stompstyle == 0) && (caped == 0))
    draw_sprite_ext(sprite_index, image_index, (round(x) + shake), round(y), direct, image_yscale, 0, c_white, image_alpha)
else if (sprite_index == scr_mariowarp())
    draw_sprite_ext(sprite_index, image_index, (round(x) + shake), round(y), 1, image_yscale, 0, c_white, image_alpha)
else
    draw_sprite_ext(sprite_index, image_index, (round(x) + shake), round(y), direct, image_yscale, 0, c_white, image_alpha)
if ((isflashing == 1) && (global.effect_star == 1))
    shader_reset()
if ((global.condiciones == 1) && (global.condiciones_clear == 1))
{
    if (global.powerup == 0)
    {
        if (global.apariencia == 2)
            draw_sprite(spr_condicion_obtenida, global.jugador, (x - 19), (y - 2))
        else
            draw_sprite(spr_SMB3_condicion_obtenida, 0, (x - 19), (y - 2))
    }
    else if (global.apariencia == 2)
        draw_sprite(spr_condicion_obtenida, global.jugador, (x - 19), (y - 12))
    else
        draw_sprite(spr_SMB3_condicion_obtenida, 0, (x - 19), (y - 12))
}


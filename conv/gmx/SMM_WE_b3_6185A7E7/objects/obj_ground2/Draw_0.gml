draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
if (global.apariencia == 0)
    draw_sprite(spr_SMB_arrow_big, arrow_image, x, (y - 48))
else if (global.apariencia == 1)
    draw_sprite(spr_SMB3_arrow_big, arrow_image, x, (y - 48))
else if (global.apariencia == 2)
    draw_sprite(spr_arrow_big, arrow_image, x, (y - 48))
else if (global.apariencia == 3)
    draw_sprite(spr_NSMBU_arrow_start, arrow_image, x, (y - 48))
else if (global.apariencia == 4)
    draw_sprite(spr_SMB2_arrow_start, arrow_image, x, (y - 48))
if (obj_levelmanager.editor == 1)
{
    if (draw_p == 1)
        draw_sprite_ext(spr_move_lianas, anim, (x + 80), y, 1, 1, 0, c_white, 1)
    else
        draw_sprite_ext(spr_move_lianas, 0, (x + 80), y, 1, 1, 0, c_white, 1)
}


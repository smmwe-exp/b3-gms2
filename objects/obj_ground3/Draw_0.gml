if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
    {
        if (global.bg_level == "snow")
        {
            draw_sprite(spr_SMB_meta_res, 0, (x - 8), (y - 168))
            draw_sprite(spr_castles_res, 1, (x + 80), (y - 80))
        }
        else if (global.bg_level == "castle")
        {
            draw_sprite(spr_hacha_res, 0, x, y)
            draw_sprite(spr_castles_res, 2, (x + 80), (y - 80))
        }
        else
        {
            draw_sprite(spr_SMB_meta_res, 0, (x - 8), (y - 168))
            draw_sprite(spr_castles_res, 0, (x + 80), (y - 80))
        }
    }
    else if (global.apariencia == 1)
    {
        if (global.bg_level == "castle")
        {
            draw_sprite(spr_hacha_res, 1, x, y)
            draw_sprite(spr_castles_res, 3, (x + 80), (y - 80))
        }
        else
        {
            draw_sprite(spr_SMB3_bg_goal, 0, (room_width - 310), 0)
            draw_sprite(spr_SMB3_goal_draw, 0, (room_width - 307), (y - 83))
            draw_sprite(spr_SMB3_meta_res, 0, x, (y - 95))
        }
    }
    else if (global.apariencia == 2)
    {
        if (global.bg_level == "castle")
        {
            draw_sprite(spr_hacha_res, 2, x, y)
            draw_sprite(spr_castles_res, 4, (x + 80), (y - 80))
        }
        else
            draw_sprite(spr_SMW_meta_res, 0, x, (y - 137))
    }
    else if (global.apariencia == 3)
    {
        if (global.bg_level == "castle")
        {
            draw_sprite(spr_hacha_res, 3, x, y)
            draw_sprite(spr_castles_res, 5, (x + 80), (y - 80))
        }
        else
            draw_sprite(spr_NSMBU_meta_res, 0, (x - 8), (y - 168))
    }
    else if (global.apariencia == 4)
    {
        if (global.bg_level == "castle")
        {
            draw_sprite(spr_hacha_res, 4, x, y)
            draw_sprite(spr_castles_res, 6, (x + 80), (y - 80))
        }
        else if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
            draw_sprite(spr_SMB2_goal_res, 1, x, y)
        else
            draw_sprite(spr_SMB2_goal_res, 0, x, y)
    }
}
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
if (obj_levelmanager.editor == 1)
{
    if (draw_p == 1)
        draw_sprite_ext(spr_move_ground3_move, anim, x, y, 1, 1, 0, c_white, 1)
    else
        draw_sprite_ext(spr_move_ground3, 0, x, y, 1, 1, 0, c_white, 1)
}


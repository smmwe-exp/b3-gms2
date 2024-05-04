if instance_exists(obj_mario)
{
    if (obj_mario.direct == 1)
        direct = 1
    else
        direct = -1
    if ((obj_mario.isflashing == 1) && (global.effect_star == 1))
        shader_set(sha_invert)
    if (global.powerup == -77)
    {
        draw_sprite_ext(m_sprite, m_subimagen, x, ((y - 32) - offset), obj_mario.direct, 1, 0, c_white, obj_mario.image_alpha)
        if (object_index == obj_kuriboshoe2)
            draw_sprite_ext(spr_SMB_kuriboshoe2_big, image_index, x, (y - offset), obj_mario.direct, 1, 0, c_white, 1)
        else
            draw_sprite_ext(spr_kuriboshoe_big, image_index, x, (y - offset), obj_mario.direct, 1, 0, c_white, 1)
    }
    else
    {
        draw_sprite_ext(m_sprite, m_subimagen, x, ((y - 16) - offset), obj_mario.direct, 1, 0, c_white, obj_mario.image_alpha)
        draw_sprite_ext(sprite_index, image_index, x, (y - offset), obj_mario.direct, 1, 0, c_white, 1)
    }
    if ((obj_mario.isflashing == 1) && (global.effect_star == 1))
        shader_reset()
}
else if instance_exists(obj_player_goal_smb3)
{
    draw_sprite_ext(m_sprite, m_subimagen, x, ((y - 16) - offset), obj_player_goal_smb3.direct, 1, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, x, (y - offset), obj_player_goal_smb3.direct, 1, 0, c_white, 1)
}
else if instance_exists(obj_player_goal_smw_castle)
{
    if (global.powerup == -77)
    {
        draw_sprite_ext(m_sprite, m_subimagen, x, ((y - 32) - offset), obj_player_goal_smw_castle.direct, 1, 0, c_white, obj_player_goal_smw_castle.image_alpha)
        if (object_index == obj_kuriboshoe2)
            draw_sprite_ext(spr_SMB_kuriboshoe2_big, image_index, x, (y - offset), obj_player_goal_smw_castle.direct, 1, 0, c_white, 1)
        else
            draw_sprite_ext(spr_kuriboshoe_big, image_index, x, (y - offset), obj_player_goal_smw_castle.direct, 1, 0, c_white, 1)
    }
    else
    {
        draw_sprite_ext(m_sprite, m_subimagen, x, ((y - 16) - offset), obj_player_goal_smw_castle.direct, 1, 0, c_white, 1)
        draw_sprite_ext(sprite_index, image_index, x, (y - offset), obj_player_goal_smw_castle.direct, 1, 0, c_white, 1)
    }
}


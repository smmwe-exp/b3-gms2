if instance_exists(obj_mario)
{
    if ((obj_mario.isflashing == 1) && (global.effect_star == 1))
        shader_set(sha_invert)
    if (global.powerup == -77)
    {
        if (invincible == 0)
            draw_sprite_ext(m_sprite, m_subimagen, (round(x) - obj_mario.direct), ((y - 32) - offset), obj_mario.direct, 1, 0, c_white, obj_mario.image_alpha)
        draw_sprite_ext(sprite_index, image_index, ((round(x) - obj_mario.direct) + shake_draw), (y - offset), obj_mario.direct, 1, 0, c_white, 1)
    }
    else
    {
        if (invincible == 0)
            draw_sprite_ext(m_sprite, m_subimagen, (round(x) - obj_mario.direct), ((y - 16) - offset), obj_mario.direct, 1, 0, c_white, obj_mario.image_alpha)
        draw_sprite_ext(sprite_index, image_index, ((round(x) - obj_mario.direct) + shake_draw), (y - offset), obj_mario.direct, 1, 0, c_white, 1)
    }
    if ((obj_mario.isflashing == 1) && (global.effect_star == 1))
        shader_reset()
}
else if instance_exists(obj_player_goal_smb3)
{
    draw_sprite_ext(m_sprite, m_subimagen, (round(x) - obj_player_goal_smb3.direct), ((y - 16) - offset), obj_player_goal_smb3.direct, 1, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, (round(x) - obj_player_goal_smb3.direct), (y - offset), obj_player_goal_smb3.direct, 1, 0, c_white, 1)
}
else if instance_exists(obj_player_goal_smw)
{
    draw_sprite_ext(m_sprite, m_subimagen, (round(x) - obj_player_goal_smw.direct), ((y - 16) - offset), obj_player_goal_smw.direct, 1, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, (round(x) - obj_player_goal_smw.direct), (y - offset), obj_player_goal_smw.direct, 1, 0, c_white, 1)
}

